lbl_8051FFC8:
/* 8051FFC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051FFCC  7C 08 02 A6 */	mflr r0
/* 8051FFD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051FFD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051FFD8  7C 7F 1B 78 */	mr r31, r3
/* 8051FFDC  4B FF F6 49 */	bl aEGH_okoruhito
/* 8051FFE0  38 60 00 01 */	li r3, 1
/* 8051FFE4  4B E7 88 65 */	bl mDemo_Set_talk_turn
/* 8051FFE8  38 60 00 03 */	li r3, 3
/* 8051FFEC  4B E7 89 35 */	bl mDemo_Set_camera
/* 8051FFF0  7F E3 FB 78 */	mr r3, r31
/* 8051FFF4  38 80 00 00 */	li r4, 0
/* 8051FFF8  4B FF FD F9 */	bl aEGH_change_talk_proc
/* 8051FFFC  4B FF F5 B5 */	bl func_8051F5B0
/* 80520000  2C 03 00 00 */	cmpwi r3, 0
/* 80520004  40 82 00 28 */	bne lbl_8052002C
/* 80520008  4B B3 CC ED */	bl fqrand
/* 8052000C  3C 60 80 65 */	lis r3, lit_742@ha /* 0x80649114@ha */
/* 80520010  C0 03 91 14 */	lfs f0, lit_742@l(r3)  /* 0x80649114@l */
/* 80520014  EC 00 00 72 */	fmuls f0, f0, f1
/* 80520018  FC 00 00 1E */	fctiwz f0, f0
/* 8052001C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80520020  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80520024  3B E3 2E E7 */	addi r31, r3, 0x2ee7
/* 80520028  48 00 00 38 */	b lbl_80520060
lbl_8052002C:
/* 8052002C  2C 03 00 05 */	cmpwi r3, 5
/* 80520030  41 80 00 2C */	blt lbl_8052005C
/* 80520034  7F E3 FB 78 */	mr r3, r31
/* 80520038  3B E0 2E F0 */	li r31, 0x2ef0
/* 8052003C  38 80 00 01 */	li r4, 1
/* 80520040  4B FF FD B1 */	bl aEGH_change_talk_proc
/* 80520044  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80520048  38 00 00 00 */	li r0, 0
/* 8052004C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80520050  3C 63 00 02 */	addis r3, r3, 2
/* 80520054  B0 03 06 80 */	sth r0, 0x680(r3)
/* 80520058  48 00 00 08 */	b lbl_80520060
lbl_8052005C:
/* 8052005C  3B E3 2E EB */	addi r31, r3, 0x2eeb
lbl_80520060:
/* 80520060  7F E3 FB 78 */	mr r3, r31
/* 80520064  4B E7 84 B1 */	bl mDemo_Set_msg_num
/* 80520068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052006C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80520070  7C 08 03 A6 */	mtlr r0
/* 80520074  38 21 00 20 */	addi r1, r1, 0x20
/* 80520078  4E 80 00 20 */	blr 
