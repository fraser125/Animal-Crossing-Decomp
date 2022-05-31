lbl_80486ABC:
/* 80486ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486AC0  7C 08 02 A6 */	mflr r0
/* 80486AC4  3C 80 80 69 */	lis r4, talk_sub_proc@ha /* 0x8068AC54@ha */
/* 80486AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486ACC  38 84 AC 54 */	addi r4, r4, talk_sub_proc@l /* 0x8068AC54@l */
/* 80486AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486AD4  7C 7F 1B 78 */	mr r31, r3
/* 80486AD8  88 03 01 85 */	lbz r0, 0x185(r3)
/* 80486ADC  54 00 10 3A */	slwi r0, r0, 2
/* 80486AE0  7D 84 00 2E */	lwzx r12, r4, r0
/* 80486AE4  7D 89 03 A6 */	mtctr r12
/* 80486AE8  4E 80 04 21 */	bctrl 
/* 80486AEC  2C 03 00 01 */	cmpwi r3, 1
/* 80486AF0  40 82 00 0C */	bne lbl_80486AFC
/* 80486AF4  38 00 00 00 */	li r0, 0
/* 80486AF8  98 1F 01 84 */	stb r0, 0x184(r31)
lbl_80486AFC:
/* 80486AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486B00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486B04  7C 08 03 A6 */	mtlr r0
/* 80486B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80486B0C  4E 80 00 20 */	blr 
