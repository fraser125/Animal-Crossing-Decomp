lbl_8053188C:
/* 8053188C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80531890  7C 08 02 A6 */	mflr r0
/* 80531894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053189C  7C 7F 1B 78 */	mr r31, r3
/* 805318A0  80 03 01 98 */	lwz r0, 0x198(r3)
/* 805318A4  2C 00 00 02 */	cmpwi r0, 2
/* 805318A8  40 82 00 20 */	bne lbl_805318C8
/* 805318AC  4B FF AF 95 */	bl func_8052C840
/* 805318B0  88 1F 07 FC */	lbz r0, 0x7fc(r31)
/* 805318B4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 805318B8  7C 00 20 40 */	cmplw r0, r4
/* 805318BC  41 82 00 0C */	beq lbl_805318C8
/* 805318C0  7F E3 FB 78 */	mr r3, r31
/* 805318C4  4B FF FF 75 */	bl func_80531838
lbl_805318C8:
/* 805318C8  88 1F 07 F7 */	lbz r0, 0x7f7(r31)
/* 805318CC  3C 60 80 6A */	lis r3, act_proc_2309@ha /* 0x806A24C4@ha */
/* 805318D0  38 83 24 C4 */	addi r4, r3, act_proc_2309@l /* 0x806A24C4@l */
/* 805318D4  7F E3 FB 78 */	mr r3, r31
/* 805318D8  54 00 10 3A */	slwi r0, r0, 2
/* 805318DC  7D 84 00 2E */	lwzx r12, r4, r0
/* 805318E0  7D 89 03 A6 */	mtctr r12
/* 805318E4  4E 80 04 21 */	bctrl 
/* 805318E8  2C 03 00 00 */	cmpwi r3, 0
/* 805318EC  40 82 00 0C */	bne lbl_805318F8
/* 805318F0  38 00 00 FF */	li r0, 0xff
/* 805318F4  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_805318F8:
/* 805318F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805318FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80531900  7C 08 03 A6 */	mtlr r0
/* 80531904  38 21 00 10 */	addi r1, r1, 0x10
/* 80531908  4E 80 00 20 */	blr 