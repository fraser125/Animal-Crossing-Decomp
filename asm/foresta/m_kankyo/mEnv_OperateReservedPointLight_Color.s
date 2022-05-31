lbl_803B9A40:
/* 803B9A40  2C 03 00 00 */	cmpwi r3, 0
/* 803B9A44  4D 80 00 20 */	bltlr 
/* 803B9A48  2C 03 00 04 */	cmpwi r3, 4
/* 803B9A4C  4C 80 00 20 */	bgelr 
/* 803B9A50  1C E3 00 0E */	mulli r7, r3, 0xe
/* 803B9A54  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B9A58  38 03 9B A0 */	addi r0, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B9A5C  7C 60 3A 14 */	add r3, r0, r7
/* 803B9A60  38 63 00 54 */	addi r3, r3, 0x54
/* 803B9A64  98 83 00 08 */	stb r4, 8(r3)
/* 803B9A68  98 A3 00 09 */	stb r5, 9(r3)
/* 803B9A6C  98 C3 00 0A */	stb r6, 0xa(r3)
/* 803B9A70  4E 80 00 20 */	blr 
