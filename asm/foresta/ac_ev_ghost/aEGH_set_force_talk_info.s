lbl_8051FDFC:
/* 8051FDFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051FE00  7C 08 02 A6 */	mflr r0
/* 8051FE04  38 80 00 37 */	li r4, 0x37
/* 8051FE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051FE0C  7C 60 1B 78 */	mr r0, r3
/* 8051FE10  38 60 00 72 */	li r3, 0x72
/* 8051FE14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8051FE18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8051FE1C  7C 1E 03 78 */	mr r30, r0
/* 8051FE20  4B E7 E2 BD */	bl mEv_get_common_area
/* 8051FE24  7C 7F 1B 78 */	mr r31, r3
/* 8051FE28  4B B3 CE CD */	bl fqrand
/* 8051FE2C  3C 60 80 65 */	lis r3, lit_742@ha /* 0x80649114@ha */
/* 8051FE30  80 1E 09 98 */	lwz r0, 0x998(r30)
/* 8051FE34  C0 03 91 14 */	lfs f0, lit_742@l(r3)  /* 0x80649114@l */
/* 8051FE38  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051FE3C  FC 00 00 1E */	fctiwz f0, f0
/* 8051FE40  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051FE44  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051FE48  7C 60 1A 14 */	add r3, r0, r3
/* 8051FE4C  4B E7 86 C9 */	bl mDemo_Set_msg_num
/* 8051FE50  4B FF F7 D5 */	bl aEGH_okoruhito
/* 8051FE54  80 7E 09 98 */	lwz r3, 0x998(r30)
/* 8051FE58  38 03 D1 2D */	addi r0, r3, -11987
/* 8051FE5C  28 00 00 0F */	cmplwi r0, 0xf
/* 8051FE60  41 81 00 8C */	bgt lbl_8051FEEC
/* 8051FE64  3C 60 80 6A */	lis r3, lit_744@ha /* 0x806A077C@ha */
/* 8051FE68  54 00 10 3A */	slwi r0, r0, 2
/* 8051FE6C  38 63 07 7C */	addi r3, r3, lit_744@l /* 0x806A077C@l */
/* 8051FE70  7C 03 00 2E */	lwzx r0, r3, r0
/* 8051FE74  7C 09 03 A6 */	mtctr r0
/* 8051FE78  4E 80 04 20 */	bctr 
lbl_8051FE7C:
/* 8051FE7C  38 60 00 01 */	li r3, 1
/* 8051FE80  4B E7 89 C9 */	bl mDemo_Set_talk_turn
/* 8051FE84  38 60 00 03 */	li r3, 3
/* 8051FE88  4B E7 8A 99 */	bl mDemo_Set_camera
/* 8051FE8C  38 60 00 01 */	li r3, 1
/* 8051FE90  48 00 05 09 */	bl aEGH_bitcheck_func
/* 8051FE94  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8051FE98  40 82 00 14 */	bne lbl_8051FEAC
/* 8051FE9C  38 60 00 6B */	li r3, 0x6b
/* 8051FEA0  48 10 DE 65 */	bl sAdo_SysTrgStart
/* 8051FEA4  38 60 00 01 */	li r3, 1
/* 8051FEA8  48 00 03 99 */	bl aEGH_bitset_func
lbl_8051FEAC:
/* 8051FEAC  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8051FEB0  60 00 40 00 */	ori r0, r0, 0x4000
/* 8051FEB4  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8051FEB8  48 00 00 44 */	b lbl_8051FEFC
lbl_8051FEBC:
/* 8051FEBC  38 60 00 01 */	li r3, 1
/* 8051FEC0  4B E7 89 89 */	bl mDemo_Set_talk_turn
/* 8051FEC4  38 60 00 01 */	li r3, 1
/* 8051FEC8  4B E7 8A 59 */	bl mDemo_Set_camera
/* 8051FECC  48 00 00 30 */	b lbl_8051FEFC
lbl_8051FED0:
/* 8051FED0  38 60 00 00 */	li r3, 0
/* 8051FED4  4B E7 89 75 */	bl mDemo_Set_talk_turn
/* 8051FED8  38 60 00 01 */	li r3, 1
/* 8051FEDC  4B E7 8A 45 */	bl mDemo_Set_camera
/* 8051FEE0  4B E9 F7 C9 */	bl func_803BF6A8
/* 8051FEE4  4B EA 27 39 */	bl mMsg_sound_set_voice_click
/* 8051FEE8  48 00 00 14 */	b lbl_8051FEFC
lbl_8051FEEC:
/* 8051FEEC  38 60 00 00 */	li r3, 0
/* 8051FEF0  4B E7 89 59 */	bl mDemo_Set_talk_turn
/* 8051FEF4  38 60 00 01 */	li r3, 1
/* 8051FEF8  4B E7 8A 29 */	bl mDemo_Set_camera
lbl_8051FEFC:
/* 8051FEFC  7F C3 F3 78 */	mr r3, r30
/* 8051FF00  38 80 00 00 */	li r4, 0
/* 8051FF04  4B FF FE ED */	bl aEGH_change_talk_proc
/* 8051FF08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051FF0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8051FF10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8051FF14  7C 08 03 A6 */	mtlr r0
/* 8051FF18  38 21 00 20 */	addi r1, r1, 0x20
/* 8051FF1C  4E 80 00 20 */	blr 
