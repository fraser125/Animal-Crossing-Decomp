lbl_803C061C:
/* 803C061C  2C 04 00 00 */	cmpwi r4, 0
/* 803C0620  4D 80 00 20 */	bltlr 
/* 803C0624  2C 04 00 04 */	cmpwi r4, 4
/* 803C0628  4C 80 00 20 */	bgelr 
/* 803C062C  54 84 10 3A */	slwi r4, r4, 2
/* 803C0630  38 84 02 BC */	addi r4, r4, 0x2bc
/* 803C0634  7C 83 22 14 */	add r4, r3, r4
/* 803C0638  98 A4 00 00 */	stb r5, 0(r4)
/* 803C063C  98 C4 00 01 */	stb r6, 1(r4)
/* 803C0640  98 E4 00 02 */	stb r7, 2(r4)
/* 803C0644  99 04 00 03 */	stb r8, 3(r4)
/* 803C0648  4E 80 00 20 */	blr 
