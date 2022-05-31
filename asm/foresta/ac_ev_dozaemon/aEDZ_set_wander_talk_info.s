lbl_8051EA34:
/* 8051EA34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051EA38  7C 08 02 A6 */	mflr r0
/* 8051EA3C  38 80 00 0D */	li r4, 0xd
/* 8051EA40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051EA44  7C 60 1B 78 */	mr r0, r3
/* 8051EA48  38 60 00 44 */	li r3, 0x44
/* 8051EA4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051EA50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051EA54  7C 1E 03 78 */	mr r30, r0
/* 8051EA58  4B E7 F3 75 */	bl mEv_get_save_area
/* 8051EA5C  7C 7F 1B 78 */	mr r31, r3
/* 8051EA60  38 60 00 03 */	li r3, 3
/* 8051EA64  4B E7 9E BD */	bl mDemo_Set_camera
/* 8051EA68  38 60 00 01 */	li r3, 1
/* 8051EA6C  4B E7 9D DD */	bl mDemo_Set_talk_turn
/* 8051EA70  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8051EA74  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8051EA78  40 82 00 10 */	bne lbl_8051EA88
/* 8051EA7C  7F C3 F3 78 */	mr r3, r30
/* 8051EA80  4B FF FA DD */	bl aEDZ_to_ageru2
/* 8051EA84  48 00 00 34 */	b lbl_8051EAB8
lbl_8051EA88:
/* 8051EA88  4B B3 E2 6D */	bl fqrand
/* 8051EA8C  3C 60 80 65 */	lis r3, lit_582@ha /* 0x806490F0@ha */
/* 8051EA90  C0 03 90 F0 */	lfs f0, lit_582@l(r3)  /* 0x806490F0@l */
/* 8051EA94  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051EA98  FC 00 00 1E */	fctiwz f0, f0
/* 8051EA9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051EAA0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051EAA4  38 63 24 0A */	addi r3, r3, 0x240a
/* 8051EAA8  4B E7 9A 6D */	bl mDemo_Set_msg_num
/* 8051EAAC  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 8051EAB0  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 8051EAB4  90 1E 09 98 */	stw r0, 0x998(r30)
lbl_8051EAB8:
/* 8051EAB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051EABC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051EAC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051EAC4  7C 08 03 A6 */	mtlr r0
/* 8051EAC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8051EACC  4E 80 00 20 */	blr 
