lbl_8052DE04:
/* 8052DE04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052DE08  7C 08 02 A6 */	mflr r0
/* 8052DE0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052DE10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052DE14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052DE18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052DE1C  7C 7E 1B 78 */	mr r30, r3
/* 8052DE20  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8052DE24  3C 63 00 02 */	addis r3, r3, 2
/* 8052DE28  83 E3 60 4C */	lwz r31, 0x604c(r3)
/* 8052DE2C  88 1F 00 B8 */	lbz r0, 0xb8(r31)
/* 8052DE30  28 00 00 00 */	cmplwi r0, 0
/* 8052DE34  41 82 00 A0 */	beq lbl_8052DED4
/* 8052DE38  28 00 00 01 */	cmplwi r0, 1
/* 8052DE3C  40 82 00 20 */	bne lbl_8052DE5C
/* 8052DE40  80 9F 00 BC */	lwz r4, 0xbc(r31)
/* 8052DE44  7C 04 F0 40 */	cmplw r4, r30
/* 8052DE48  41 82 00 8C */	beq lbl_8052DED4
/* 8052DE4C  38 61 00 08 */	addi r3, r1, 8
/* 8052DE50  38 84 00 28 */	addi r4, r4, 0x28
/* 8052DE54  4B E8 D0 69 */	bl xyz_t_move
/* 8052DE58  48 00 00 10 */	b lbl_8052DE68
lbl_8052DE5C:
/* 8052DE5C  38 61 00 08 */	addi r3, r1, 8
/* 8052DE60  38 9F 00 C0 */	addi r4, r31, 0xc0
/* 8052DE64  4B E8 D0 59 */	bl xyz_t_move
lbl_8052DE68:
/* 8052DE68  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D08D@ha */
/* 8052DE6C  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8052DE70  38 03 D0 8D */	addi r0, r3, 0xD08D /* 0x0000D08D@l */
/* 8052DE74  7C 04 00 00 */	cmpw r4, r0
/* 8052DE78  40 80 00 30 */	bge lbl_8052DEA8
/* 8052DE7C  38 03 D0 87 */	addi r0, r3, -12153
/* 8052DE80  7C 04 00 00 */	cmpw r4, r0
/* 8052DE84  40 80 00 08 */	bge lbl_8052DE8C
/* 8052DE88  48 00 00 20 */	b lbl_8052DEA8
lbl_8052DE8C:
/* 8052DE8C  88 BF 00 B8 */	lbz r5, 0xb8(r31)
/* 8052DE90  7F C3 F3 78 */	mr r3, r30
/* 8052DE94  80 DF 00 BC */	lwz r6, 0xbc(r31)
/* 8052DE98  38 FF 00 C0 */	addi r7, r31, 0xc0
/* 8052DE9C  38 80 00 02 */	li r4, 2
/* 8052DEA0  48 00 03 85 */	bl aNPC_set_head_request
/* 8052DEA4  48 00 00 30 */	b lbl_8052DED4
lbl_8052DEA8:
/* 8052DEA8  7F C3 F3 78 */	mr r3, r30
/* 8052DEAC  38 81 00 08 */	addi r4, r1, 8
/* 8052DEB0  4B FF FE 55 */	bl func_8052DD04
/* 8052DEB4  2C 03 00 01 */	cmpwi r3, 1
/* 8052DEB8  40 82 00 1C */	bne lbl_8052DED4
/* 8052DEBC  88 BF 00 B8 */	lbz r5, 0xb8(r31)
/* 8052DEC0  7F C3 F3 78 */	mr r3, r30
/* 8052DEC4  80 DF 00 BC */	lwz r6, 0xbc(r31)
/* 8052DEC8  38 FF 00 C0 */	addi r7, r31, 0xc0
/* 8052DECC  38 80 00 02 */	li r4, 2
/* 8052DED0  48 00 03 55 */	bl aNPC_set_head_request
lbl_8052DED4:
/* 8052DED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052DED8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052DEDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052DEE0  7C 08 03 A6 */	mtlr r0
/* 8052DEE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8052DEE8  4E 80 00 20 */	blr 
