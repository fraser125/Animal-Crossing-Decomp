lbl_803C50E4:
/* 803C50E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C50E8  7C 08 02 A6 */	mflr r0
/* 803C50EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C50F0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 803C50F4  80 C4 00 00 */	lwz r6, 0(r4)
/* 803C50F8  38 A5 00 20 */	addi r5, r5, 0x20
/* 803C50FC  7C 05 30 AE */	lbzx r0, r5, r6
/* 803C5100  28 00 00 7F */	cmplwi r0, 0x7f
/* 803C5104  40 82 00 48 */	bne lbl_803C514C
/* 803C5108  7C A5 32 14 */	add r5, r5, r6
/* 803C510C  88 05 00 01 */	lbz r0, 1(r5)
/* 803C5110  2C 00 00 00 */	cmpwi r0, 0
/* 803C5114  41 80 00 24 */	blt lbl_803C5138
/* 803C5118  2C 00 00 7B */	cmpwi r0, 0x7b
/* 803C511C  40 80 00 1C */	bge lbl_803C5138
/* 803C5120  3C A0 80 64 */	lis r5, proc_2258@ha /* 0x80642644@ha */
/* 803C5124  54 00 10 3A */	slwi r0, r0, 2
/* 803C5128  38 A5 26 44 */	addi r5, r5, proc_2258@l /* 0x80642644@l */
/* 803C512C  7D 85 00 2E */	lwzx r12, r5, r0
/* 803C5130  28 0C 00 00 */	cmplwi r12, 0
/* 803C5134  40 82 00 0C */	bne lbl_803C5140
lbl_803C5138:
/* 803C5138  38 60 00 00 */	li r3, 0
/* 803C513C  48 00 00 14 */	b lbl_803C5150
lbl_803C5140:
/* 803C5140  7D 89 03 A6 */	mtctr r12
/* 803C5144  4E 80 04 21 */	bctrl 
/* 803C5148  48 00 00 08 */	b lbl_803C5150
lbl_803C514C:
/* 803C514C  38 60 00 00 */	li r3, 0
lbl_803C5150:
/* 803C5150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C5154  7C 08 03 A6 */	mtlr r0
/* 803C5158  38 21 00 10 */	addi r1, r1, 0x10
/* 803C515C  4E 80 00 20 */	blr 