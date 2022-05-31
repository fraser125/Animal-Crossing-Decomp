lbl_803D45E0:
/* 803D45E0  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803D45E4  38 60 00 00 */	li r3, 0
/* 803D45E8  28 05 FE B3 */	cmplwi r5, 0xfeb3
/* 803D45EC  4D 80 00 20 */	bltlr 
/* 803D45F0  28 05 FE C2 */	cmplwi r5, 0xfec2
/* 803D45F4  4D 81 00 20 */	bgtlr 
/* 803D45F8  3C A5 FF FF */	addis r5, r5, 0xffff
/* 803D45FC  38 A5 01 4D */	addi r5, r5, 0x14d
/* 803D4600  54 A0 F0 02 */	slwi r0, r5, 0x1e
/* 803D4604  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 803D4608  7C 03 00 50 */	subf r0, r3, r0
/* 803D460C  54 00 10 3E */	rotlwi r0, r0, 2
/* 803D4610  7C 00 1A 14 */	add r0, r0, r3
/* 803D4614  7C 00 28 50 */	subf r0, r0, r5
/* 803D4618  7C 00 16 70 */	srawi r0, r0, 2
/* 803D461C  7C 00 01 94 */	addze r0, r0
/* 803D4620  2C 00 00 04 */	cmpwi r0, 4
/* 803D4624  41 80 00 08 */	blt lbl_803D462C
/* 803D4628  38 00 00 00 */	li r0, 0
lbl_803D462C:
/* 803D462C  54 00 08 3C */	slwi r0, r0, 1
/* 803D4630  7C 64 02 14 */	add r3, r4, r0
/* 803D4634  A0 63 08 D8 */	lhz r3, 0x8d8(r3)
/* 803D4638  4E 80 00 20 */	blr 
