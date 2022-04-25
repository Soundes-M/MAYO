/*
Implementation by the Keccak Team, namely, Guido Bertoni, Joan Daemen,
Michaël Peeters, Gilles Van Assche and Ronny Van Keer,
hereby denoted as "the implementer".

For more information, feedback or questions, please refer to our website:
https://keccak.team/

To the extent possible under law, the implementer has waived all copyright
and related or neighboring rights to the source code in this file.
http://creativecommons.org/publicdomain/zero/1.0/
*/

#include <string.h>
#include "test_crypto_hash.h"

int main()
{
    const unsigned char *message = (const unsigned char *)
        "\x11\x97\x13\xCC\x83\xEE\xEF";
    const unsigned char *hash = (const unsigned char *)
        "\xe2\xa9\x53\x7b\xac\x3c\x4d\xfc\x90\x08\xc1\xa7\xab\xa6\x53\x88\x3d\x7a\x1d\xf3\x56\x85\xdb\xf4\x9a\xbe\x5a\x7e\x93\xbf\x04\x4b\xc3\x31\x2a\x5e\x4d\x97\x43\xd7\x2b\xd2\x8a\xcc\x16\xf6\x4a\xc5\x09\x0a\x71\x76\x1d\x93\x6f\xb9\xda\x7c\x78\x2a\xf9\xbc\x1f\x63\x6d\x0e\x17\xcb\x41\xc7\xe0\xe9\xdf\xbd\xb2\x01\x7e\xca\xba\x6d\xbe\xcd\xce\x2a\xec\xce\x3e\xd4\xf5\x93\x24\xe7\x4d\x58\xd4\x34\x09\x63\x56\xe5\x67\xb3\x5a\xc8\x5f\x7c\xa9\xab\x80\xb1\xc9\x87\xce\x70\xf9\x98\xab\xe6\x53\x6f\xe4\x85\xa8\x66\xa2\x2c\xdc\xc3\x7d\xb0\x8c\xc7\x42\xb4\x61\x21\x21\xcf\x34\xc2\xd4\x04\xb3\x7e\x8e\xa8\xd9\x0c\xa9\xcf\xd0\xc8\xc6\xec\xb6\xb4\x4b\xf7\x3f\x4d\x04\x8a\x0f\xd8\x55\x91\xd8\x72";
    return test_crypto_hash(message, 7, hash, 168);
}
