lbl_803ECA68:
/* 803ECA68  88 03 09 B4 */	lbz r0, 0x9b4(r3)
/* 803ECA6C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 803ECA70  7C 60 22 14 */	add r3, r0, r4
/* 803ECA74  38 63 32 80 */	addi r3, r3, 0x3280
/* 803ECA78  4E 80 00 20 */	blr 
