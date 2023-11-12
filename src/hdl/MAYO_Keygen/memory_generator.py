from memory_space_viewer import get_constant_name, read_common, filter_comments
import math


def bytes_to_megabytes(bytes_value):
    megabytes = bytes_value / (1024**2)
    return round(megabytes, 4)


def getBRAMSize(bramNumber: int, entries: dict):
    """
    Get BRAM Size according to to BRAM
    """

    def calculate_percentage_increase(original, new):
        percentage_increase = ((new - original) / new) * 100
        return round(percentage_increase, 2)

    actual_size = 0
    if bramNumber == 1:
        actual_size = int(entries["VIN_HIGH_ADR"]) + 4

    elif bramNumber == 2:
        actual_size = max(
            int(entries["TEMPT_HIGH_ADR"]) + 4, int(entries["SK_EXP_HIGH_ADR"]) + 4
        )
        actual_size += int(entries["OFFSET"])
        actual_size += int(entries["CPU_SPACE_PK_RANGE_ADR"])
        actual_size += int(entries["CPU_SPACE_SK_RANGE_ADR"])
        actual_size += int(entries["CPU_SPACE_MESSAGE_RANGE"])
        actual_size += int(entries["CPU_SPACE_SIG_RANGE"])

    elif bramNumber == 3:
        actual_size = max(
            int(entries["UNPACKED_AUGMENT_HIGH_ADR"]) + 4,
            int(entries["BILINEAR_TEMP_HIGH_ADR"]) + 4,
        )

    else:
        print("Invalid")
        return actual_size

    log2_number = math.ceil(math.log2(actual_size))
    rounded_log2 = round(log2_number)
    final = 2**rounded_log2
    print(
        f"{bramNumber}| Actual: {actual_size:7}, Allocated : {final:7} ({bytes_to_megabytes(final):6} MB) ({calculate_percentage_increase(actual_size,final)}%)"
    )

    return final


def configure_common(newSize, bram):
    with open("MAYO_Common.vhd", "r") as file:
        vhdl_content = file.readlines()

    for i, line in enumerate(vhdl_content):
        if f'CONSTANT BRAM_{"I"*bram}_SIZE' in line:
            vhdl_content[
                i
            ] = f'  CONSTANT BRAM_{"I"*bram}_SIZE       : natural := {newSize}; -- Bytes\n'

    with open("MAYO_Common.vhd", "w") as file:
        file.writelines(vhdl_content)


def generate_bram(
    name,
    depth,
    adr_depth,
):
    vhdl_text = """-- Automatic generated by memory_generator.py 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
USE std.textio.all;

entity tdp_{name} is
    generic (
        NB_COL          : integer := 4;             -- Specify number of columns (number of bytes)
        COL_WIDTH       : integer := 8;             -- Specify column width (byte width, typically 8 or 9)
        RAM_PERFORMANCE : string  := "LOW_LATENCY"; -- Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
        INIT_FILE       : string  := ""             -- Specify name/location of RAM initialization file if using one (leave blank if not)
    );

    port (
        addra  : in  std_logic_vector(31 downto 0);                 -- Port A Address bus, width determined from RAM_DEPTH
        addrb  : in  std_logic_vector(31 downto 0);                 -- Port B Address bus, width determined from RAM_DEPTH
        dina   : in  std_logic_vector(NB_COL*COL_WIDTH-1 downto 0); -- Port A RAM input data
        dinb   : in  std_logic_vector(NB_COL*COL_WIDTH-1 downto 0); -- Port B RAM input data
        clka   : in  std_logic;                                     -- Port A Clock
        clkb   : in  std_logic;                                     -- Port B Clock
        wea    : in  std_logic_vector(NB_COL-1 downto 0);           -- Port A Write enable
        web    : in  std_logic_vector(NB_COL-1 downto 0);           -- Port B Write enable
        ena    : in  std_logic;                                     -- Port A RAM Enable, for additional power savings, disable port when not in use
        enb    : in  std_logic;                                     -- Port B RAM Enable, for additional power savings, disable port when not in use
        rsta   : in  std_logic;                                     -- Port A Output reset (does not affect memory contents)
        rstb   : in  std_logic;                                     -- Port B Output reset (does not affect memory contents)
        regcea : in  std_logic;                                     -- Port A Output register enable
        regceb : in  std_logic;                                     -- Port B Output register enable
        douta  : out std_logic_vector(NB_COL*COL_WIDTH-1 downto 0); --  Port A RAM output data
        doutb  : out std_logic_vector(NB_COL*COL_WIDTH-1 downto 0)  --  Port B RAM output data
    );

end tdp_{name};

architecture rtl of tdp_{name} is

    ATTRIBUTE X_INTERFACE_INFO             : STRING;
    ATTRIBUTE X_INTERFACE_INFO of clka     : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
    ATTRIBUTE X_INTERFACE_INFO of dina     : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
    ATTRIBUTE X_INTERFACE_INFO of addra    : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
    ATTRIBUTE X_INTERFACE_INFO of ena      : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
    ATTRIBUTE X_INTERFACE_INFO of rsta     : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
    ATTRIBUTE X_INTERFACE_INFO of wea      : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
    ATTRIBUTE X_INTERFACE_INFO of douta    : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
    
    ATTRIBUTE X_INTERFACE_INFO of clkb     : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
    ATTRIBUTE X_INTERFACE_INFO of dinb     : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN";
    ATTRIBUTE X_INTERFACE_INFO of addrb    : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
    ATTRIBUTE X_INTERFACE_INFO of enb      : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
    ATTRIBUTE X_INTERFACE_INFO of rstb     : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTB RST";
    ATTRIBUTE X_INTERFACE_INFO of web      : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
    ATTRIBUTE X_INTERFACE_INFO of doutb    : SIGNAL is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";

    constant C_NB_COL          : integer := NB_COL;
    constant C_COL_WIDTH       : integer := COL_WIDTH;
    constant C_RAM_DEPTH       : integer := {depth};
    constant C_RAM_PERFORMANCE : string  := RAM_PERFORMANCE;
    constant C_INIT_FILE       : string  := INIT_FILE;

    signal douta_reg : std_logic_vector(C_NB_COL*C_COL_WIDTH-1 downto 0) := (others => '0');
    signal doutb_reg : std_logic_vector(C_NB_COL*C_COL_WIDTH-1 downto 0) := (others => '0');

    type ram_type is array (C_RAM_DEPTH-1 downto 0) of std_logic_vector (C_NB_COL*C_COL_WIDTH-1 downto 0); -- 2D Array Declaration for RAM signal

    signal ram_data_a : std_logic_vector(C_NB_COL*C_COL_WIDTH-1 downto 0) ;
    signal ram_data_b : std_logic_vector(C_NB_COL*C_COL_WIDTH-1 downto 0) ;

    function initramfromfile (ramfilename : in string) return ram_type is
        file ramfile                          :    text is in ramfilename;
        variable ramfileline                  :    line;
        variable ram_name                     :    ram_type;
        variable bitvec                       :    bit_vector(C_NB_COL*C_COL_WIDTH-1 downto 0);
    begin
        for i in ram_type'range loop
            readline (ramfile, ramfileline);
            read (ramfileline, bitvec);
            ram_name(i) := to_stdlogicvector(bitvec);
        end loop;
        return ram_name;
    end function;

    function init_from_file_or_zeroes(ramfile : string) return ram_type is
    begin
        if ramfile /= "" then
            return InitRamFromFile(C_INIT_FILE) ;
        else
            return (others => (others => '0'));
        end if;
    end;
    -- Following code defines RAM

    shared variable ram_name : ram_type := init_from_file_or_zeroes(C_INIT_FILE);

begin

    process(clka)
    begin
        if(clka'event and clka = '1') then
            if(ena = '1') then
                ram_data_a <= ram_name(to_integer(unsigned(addra({adr_depth}-1 downto 2)))); -- word align
                for i in 0 to C_NB_COL-1 loop
                    if(wea(i) = '1') then
                        ram_name(to_integer(unsigned(addra({adr_depth}-1 downto 2))))((i+1)*C_COL_WIDTH-1 downto i*C_COL_WIDTH) := dina((i+1)*C_COL_WIDTH-1 downto i*C_COL_WIDTH);
                    end if;
                end loop;
            end if;
        end if;
    end process;

    process(clkb)
    begin
        if(clkb'event and clkb = '1') then
            if(enb = '1') then
                ram_data_b <= ram_name(to_integer(unsigned(addrb({adr_depth}-1 downto 2)))); -- word align
                for i in 0 to C_NB_COL-1 loop
                    if(web(i) = '1') then
                        ram_name(to_integer(unsigned(addrb({adr_depth}-1 downto 2))))((i+1)*C_COL_WIDTH-1 downto i*C_COL_WIDTH) := dinb((i+1)*C_COL_WIDTH-1 downto i*C_COL_WIDTH);
                    end if;
                end loop;
            end if;
        end if;
    end process;

    --  Following code generates LOW_LATENCY (no output register)
    --  Following is a 1 clock cycle read latency at the cost of a longer clock-to-out timing

    no_output_register : if C_RAM_PERFORMANCE = "LOW_LATENCY" generate
        douta <= ram_data_a;
        doutb <= ram_data_b;
    end generate;

    output_register : if C_RAM_PERFORMANCE = "HIGH_PERFORMANCE" generate
        process(clka)
        begin
            if(clka'event and clka = '1') then
                if(rsta = '1') then
                    douta_reg <= (others => '0');
                elsif(regcea = '1') then
                    douta_reg <= ram_data_a;
                end if;
            end if;
        end process;
        douta <= douta_reg;

        process(clkb)
        begin
            if(clkb'event and clkb = '1') then
                if(rstb = '1') then
                    doutb_reg <= (others => '0');
                elsif(regceb = '1') then
                    doutb_reg <= ram_data_b;
                end if;
            end if;
        end process;
        doutb <= doutb_reg;

    end generate;

end rtl;
""".format(
        adr_depth=int(adr_depth), name=name, depth=int(depth)
    )
    # Specify the file path
    file_path = r"../Utils/mem/" + name + ".vhd"

    # Open the file in write mode
    with open(file_path, "w") as file:
        # Write the string to the file
        file.write(vhdl_text)


def get_mem_adr_width(mem_depth):
    return math.ceil(math.log2(mem_depth)) + 2


if __name__ == "__main__":
    entries = get_constant_name(filter_comments(read_common()))

    # configure BRAM const
    for i in range(1, 4):
        size = getBRAMSize(i, entries)
        print(size)
        configure_common(size, i)
        if i == 1:
            name = f"SmallBRAM_1"
        elif i == 2:
            name = f"BigBRAM_2"
        elif i == 3:
            name = f"BigBRAM_3"

        generate_bram(name, size / 4, get_mem_adr_width(size / 4))
