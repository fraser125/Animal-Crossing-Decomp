lbl_804EB0A4:
/* 804EB0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB0A8  7C 08 02 A6 */	mflr r0
/* 804EB0AC  2C 05 00 00 */	cmpwi r5, 0
/* 804EB0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB0B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EB0B8  7C 7F 1B 78 */	mr r31, r3
/* 804EB0BC  41 82 00 48 */	beq lbl_804EB104
/* 804EB0C0  80 1F 0D 28 */	lwz r0, 0xd28(r31)
/* 804EB0C4  2C 00 00 00 */	cmpwi r0, 0
/* 804EB0C8  40 82 00 3C */	bne lbl_804EB104
/* 804EB0CC  3C A0 80 64 */	lis r5, lit_603@ha /* 0x80646564@ha */
/* 804EB0D0  3C C0 80 64 */	lis r6, lit_2671@ha /* 0x80646C4C@ha */
/* 804EB0D4  38 E5 65 64 */	addi r7, r5, lit_603@l /* 0x80646564@l */
/* 804EB0D8  C0 66 6C 4C */	lfs f3, lit_2671@l(r6)  /* 0x80646C4C@l */
/* 804EB0DC  C0 27 00 00 */	lfs f1, 0(r7)
/* 804EB0E0  3C A0 80 65 */	lis r5, lit_8374@ha /* 0x80648494@ha */
/* 804EB0E4  C0 85 84 94 */	lfs f4, lit_8374@l(r5)  /* 0x80648494@l */
/* 804EB0E8  38 A0 00 06 */	li r5, 6
/* 804EB0EC  FC 40 08 90 */	fmr f2, f1
/* 804EB0F0  38 C0 00 06 */	li r6, 6
/* 804EB0F4  38 E0 00 00 */	li r7, 0
/* 804EB0F8  4B FE B6 01 */	bl Player_actor_InitAnimation_Base1
/* 804EB0FC  38 00 00 01 */	li r0, 1
/* 804EB100  90 1F 0D 28 */	stw r0, 0xd28(r31)
lbl_804EB104:
/* 804EB104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EB10C  7C 08 03 A6 */	mtlr r0
/* 804EB110  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB114  4E 80 00 20 */	blr 
