lbl_805DB0F4:
/* 805DB0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DB0F8  7C 08 02 A6 */	mflr r0
/* 805DB0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DB100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DB104  3B E0 00 00 */	li r31, 0
/* 805DB108  93 C1 00 08 */	stw r30, 8(r1)
/* 805DB10C  7C 7E 1B 78 */	mr r30, r3
/* 805DB110  38 60 00 10 */	li r3, 0x10
/* 805DB114  4B DB AD 5D */	bl chkButton
/* 805DB118  2C 03 00 00 */	cmpwi r3, 0
/* 805DB11C  41 82 00 08 */	beq lbl_805DB124
/* 805DB120  3B E0 00 01 */	li r31, 1
lbl_805DB124:
/* 805DB124  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805DB128  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DB12C  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805DB130  3C 60 80 6D */	lis r3, btn_tex_1618@ha /* 0x806CCEA0@ha */
/* 805DB134  90 06 00 00 */	stw r0, 0(r6)
/* 805DB138  3C 80 80 A7 */	lis r4, kai_sousa_rbuttonT_model@ha /* 0x80A6D9E8@ha */
/* 805DB13C  57 E0 10 3A */	slwi r0, r31, 2
/* 805DB140  38 63 CE A0 */	addi r3, r3, btn_tex_1618@l /* 0x806CCEA0@l */
/* 805DB144  7C 03 00 2E */	lwzx r0, r3, r0
/* 805DB148  3C 60 80 A7 */	lis r3, kai_sousa_spaceT_model@ha /* 0x80A6DE58@ha */
/* 805DB14C  3C A0 DE 00 */	lis r5, 0xde00
/* 805DB150  38 84 D9 E8 */	addi r4, r4, kai_sousa_rbuttonT_model@l /* 0x80A6D9E8@l */
/* 805DB154  90 06 00 04 */	stw r0, 4(r6)
/* 805DB158  38 03 DE 58 */	addi r0, r3, kai_sousa_spaceT_model@l /* 0x80A6DE58@l */
/* 805DB15C  90 A6 00 08 */	stw r5, 8(r6)
/* 805DB160  90 86 00 0C */	stw r4, 0xc(r6)
/* 805DB164  38 C6 00 10 */	addi r6, r6, 0x10
/* 805DB168  7C C3 33 78 */	mr r3, r6
/* 805DB16C  90 A6 00 00 */	stw r5, 0(r6)
/* 805DB170  38 C6 00 08 */	addi r6, r6, 8
/* 805DB174  90 03 00 04 */	stw r0, 4(r3)
/* 805DB178  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DB17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DB180  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DB184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DB188  7C 08 03 A6 */	mtlr r0
/* 805DB18C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DB190  4E 80 00 20 */	blr 
