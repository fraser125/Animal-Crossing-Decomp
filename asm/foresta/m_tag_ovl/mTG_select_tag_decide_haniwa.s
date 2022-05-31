lbl_805FB278:
/* 805FB278  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 805FB27C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805FB280  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 805FB284  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 805FB288  1C E3 26 B0 */	mulli r7, r3, 0x26b0
/* 805FB28C  38 60 00 00 */	li r3, 0
/* 805FB290  3C A6 00 01 */	addis r5, r6, 1
/* 805FB294  54 06 18 38 */	slwi r6, r0, 3
/* 805FB298  7C 05 3A 14 */	add r0, r5, r7
/* 805FB29C  7C A0 32 14 */	add r5, r0, r6
/* 805FB2A0  A0 05 C2 BC */	lhz r0, -0x3d44(r5)
/* 805FB2A4  28 00 00 00 */	cmplwi r0, 0
/* 805FB2A8  4D 82 00 20 */	beqlr 
/* 805FB2AC  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805FB2B0  2C 00 00 00 */	cmpwi r0, 0
/* 805FB2B4  40 82 00 0C */	bne lbl_805FB2C0
/* 805FB2B8  38 60 00 25 */	li r3, 0x25
/* 805FB2BC  4E 80 00 20 */	blr 
lbl_805FB2C0:
/* 805FB2C0  A8 05 C2 BE */	lha r0, -0x3d42(r5)
/* 805FB2C4  2C 00 00 01 */	cmpwi r0, 1
/* 805FB2C8  4D 82 00 20 */	beqlr 
/* 805FB2CC  38 60 00 28 */	li r3, 0x28
/* 805FB2D0  4E 80 00 20 */	blr 
