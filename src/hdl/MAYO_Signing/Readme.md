# Cores used in Signing
## Core to BRAM Access
|   Core   | BRAM0A | BRAM0B | BRAM1A | BRAM2A | BRAM2B |
|:--------:|:------:|:------:|:------:|:------:|:------:|
|   HASH   |        |        |    1   |        |        |
|          |    1   |        |        |        |        |
|          |    1   |        |        |        |        |
|  Reduce  |        |        |    1   |        |        |
|          |    1   |        |        |        |        |
| Lin_comb |        |        |    2   |    1   |    3   |
|          |        |        |    1   |    2   |    3   |
|          |    2   |    2   |    1   |        |        |
|  add_vec |        |        |    2   |    1   |    3   |
|          |        |        |        |   13   |    2   |
|          |        |        |        |   13   |    2   |
|          |    2   |        |        |    1   |    3   |
|  red_ext |    1   |        |        |    2   |        |
|    neg   |        |        |        |    1   |        |

PS: The number refers to the port number in the CORE.

## Add_vectors_arbiter:

### Signing modes :

00000 

00001

00010

### Keygen modes

00011

00100

### Reserved
The rest is reserved for futher extensions

## Lin. Comb. Arbiter:

### Singing modes:

00001

00010

### Keygen modes :

00000

