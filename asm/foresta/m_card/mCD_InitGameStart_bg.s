lbl_803FFDA0:
/* 803FFDA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FFDA4  7C 08 02 A6 */	mflr r0
/* 803FFDA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FFDAC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FFDB0  4B C9 B1 1D */	bl func_8009AECC
/* 803FFDB4  3C E0 81 19 */	lis r7, l_memMgr@ha /* 0x81197638@ha */
/* 803FFDB8  7C DB 33 78 */	mr r27, r6
/* 803FFDBC  39 07 76 38 */	addi r8, r7, l_memMgr@l /* 0x81197638@l */
/* 803FFDC0  3B 80 00 19 */	li r28, 0x19
/* 803FFDC4  80 C8 01 88 */	lwz r6, 0x188(r8)
/* 803FFDC8  3B A8 00 34 */	addi r29, r8, 0x34
/* 803FFDCC  80 08 01 8C */	lwz r0, 0x18c(r8)
/* 803FFDD0  7D 1E 43 78 */	mr r30, r8
/* 803FFDD4  38 C6 00 01 */	addi r6, r6, 1
/* 803FFDD8  80 E8 00 34 */	lwz r7, 0x34(r8)
/* 803FFDDC  2C 00 00 00 */	cmpwi r0, 0
/* 803FFDE0  90 C8 01 88 */	stw r6, 0x188(r8)
/* 803FFDE4  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 803FFDE8  40 82 01 DC */	bne lbl_803FFFC4
/* 803FFDEC  28 00 00 0A */	cmplwi r0, 0xa
/* 803FFDF0  40 80 01 C4 */	bge lbl_803FFFB4
/* 803FFDF4  3C C0 80 66 */	lis r6, start_proc_3660@ha /* 0x8065EA44@ha */
/* 803FFDF8  90 7D 00 04 */	stw r3, 4(r29)
/* 803FFDFC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803FFE00  7D 03 43 78 */	mr r3, r8
/* 803FFE04  38 C6 EA 44 */	addi r6, r6, start_proc_3660@l /* 0x8065EA44@l */
/* 803FFE08  90 9D 00 08 */	stw r4, 8(r29)
/* 803FFE0C  7D 86 00 2E */	lwzx r12, r6, r0
/* 803FFE10  7F A4 EB 78 */	mr r4, r29
/* 803FFE14  90 BD 00 0C */	stw r5, 0xc(r29)
/* 803FFE18  7D 89 03 A6 */	mtctr r12
/* 803FFE1C  4E 80 04 21 */	bctrl 
/* 803FFE20  7C 7F 1B 78 */	mr r31, r3
/* 803FFE24  2C 1F 00 01 */	cmpwi r31, 1
/* 803FFE28  40 82 00 20 */	bne lbl_803FFE48
/* 803FFE2C  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FFE30  2C 00 00 0A */	cmpwi r0, 0xa
/* 803FFE34  40 82 00 EC */	bne lbl_803FFF20
/* 803FFE38  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FFE3C  3B 80 00 00 */	li r28, 0
/* 803FFE40  90 1B 00 00 */	stw r0, 0(r27)
/* 803FFE44  48 00 00 DC */	b lbl_803FFF20
lbl_803FFE48:
/* 803FFE48  2C 1F 00 00 */	cmpwi r31, 0
/* 803FFE4C  41 82 00 D4 */	beq lbl_803FFF20
/* 803FFE50  80 1E 01 A0 */	lwz r0, 0x1a0(r30)
/* 803FFE54  2C 00 00 01 */	cmpwi r0, 1
/* 803FFE58  40 82 00 1C */	bne lbl_803FFE74
/* 803FFE5C  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FFE60  38 00 FF FF */	li r0, -1
/* 803FFE64  3B 80 00 00 */	li r28, 0
/* 803FFE68  90 7B 00 00 */	stw r3, 0(r27)
/* 803FFE6C  90 1E 01 84 */	stw r0, 0x184(r30)
/* 803FFE70  48 00 00 88 */	b lbl_803FFEF8
lbl_803FFE74:
/* 803FFE74  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FFE78  2C 00 00 00 */	cmpwi r0, 0
/* 803FFE7C  41 82 00 0C */	beq lbl_803FFE88
/* 803FFE80  2C 00 00 01 */	cmpwi r0, 1
/* 803FFE84  40 82 00 70 */	bne lbl_803FFEF4
lbl_803FFE88:
/* 803FFE88  90 1B 00 00 */	stw r0, 0(r27)
/* 803FFE8C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803FFE90  1C 60 00 94 */	mulli r3, r0, 0x94
/* 803FFE94  38 03 00 CC */	addi r0, r3, 0xcc
/* 803FFE98  7F 9E 00 2E */	lwzx r28, r30, r0
/* 803FFE9C  2C 1C 00 00 */	cmpwi r28, 0
/* 803FFEA0  40 82 00 08 */	bne lbl_803FFEA8
/* 803FFEA4  3B 80 00 02 */	li r28, 2
lbl_803FFEA8:
/* 803FFEA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FFEAC  38 80 03 80 */	li r4, 0x380
/* 803FFEB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FFEB4  3C 63 00 02 */	addis r3, r3, 2
/* 803FFEB8  38 63 61 64 */	addi r3, r3, 0x6164
/* 803FFEBC  4B C5 D1 AD */	bl bzero
/* 803FFEC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FFEC4  38 80 00 38 */	li r4, 0x38
/* 803FFEC8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FFECC  3C 63 00 02 */	addis r3, r3, 2
/* 803FFED0  38 63 64 E4 */	addi r3, r3, 0x64e4
/* 803FFED4  4B C5 D1 95 */	bl bzero
/* 803FFED8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FFEDC  38 80 01 00 */	li r4, 0x100
/* 803FFEE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FFEE4  3C 63 00 02 */	addis r3, r3, 2
/* 803FFEE8  38 63 66 A8 */	addi r3, r3, 0x66a8
/* 803FFEEC  4B C5 D1 7D */	bl bzero
/* 803FFEF0  48 00 00 08 */	b lbl_803FFEF8
lbl_803FFEF4:
/* 803FFEF4  3B 80 00 02 */	li r28, 2
lbl_803FFEF8:
/* 803FFEF8  80 9E 01 84 */	lwz r4, 0x184(r30)
/* 803FFEFC  2C 04 FF FF */	cmpwi r4, -1
/* 803FFF00  41 82 00 20 */	beq lbl_803FFF20
/* 803FFF04  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FFF08  2C 00 00 08 */	cmpwi r0, 8
/* 803FFF0C  41 81 00 14 */	bgt lbl_803FFF20
/* 803FFF10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FFF14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FFF18  3C 63 00 03 */	addis r3, r3, 3
/* 803FFF1C  B0 83 85 96 */	sth r4, -0x7a6a(r3)
lbl_803FFF20:
/* 803FFF20  2C 1F FF FF */	cmpwi r31, -1
/* 803FFF24  41 82 00 18 */	beq lbl_803FFF3C
/* 803FFF28  2C 1F 00 01 */	cmpwi r31, 1
/* 803FFF2C  40 82 00 C8 */	bne lbl_803FFFF4
/* 803FFF30  80 1D 00 00 */	lwz r0, 0(r29)
/* 803FFF34  2C 00 00 0A */	cmpwi r0, 0xa
/* 803FFF38  40 82 00 BC */	bne lbl_803FFFF4
lbl_803FFF3C:
/* 803FFF3C  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 803FFF40  2C 00 00 02 */	cmpwi r0, 2
/* 803FFF44  40 82 00 14 */	bne lbl_803FFF58
/* 803FFF48  7F C3 F3 78 */	mr r3, r30
/* 803FFF4C  4B FF A5 81 */	bl mCD_ClearMemMgr_com2
/* 803FFF50  4B FF D6 91 */	bl mCD_load_famicom_file
/* 803FFF54  48 00 00 A0 */	b lbl_803FFFF4
lbl_803FFF58:
/* 803FFF58  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 803FFF5C  2C 00 00 70 */	cmpwi r0, 0x70
/* 803FFF60  41 80 00 24 */	blt lbl_803FFF84
/* 803FFF64  38 60 00 47 */	li r3, 0x47
/* 803FFF68  48 22 DF BD */	bl sAdo_SysLevStop
/* 803FFF6C  7F C3 F3 78 */	mr r3, r30
/* 803FFF70  4B FF A5 5D */	bl mCD_ClearMemMgr_com2
/* 803FFF74  2C 1F 00 01 */	cmpwi r31, 1
/* 803FFF78  40 82 00 7C */	bne lbl_803FFFF4
/* 803FFF7C  4B FF D6 65 */	bl mCD_load_famicom_file
/* 803FFF80  48 00 00 74 */	b lbl_803FFFF4
lbl_803FFF84:
/* 803FFF84  93 9E 01 90 */	stw r28, 0x190(r30)
/* 803FFF88  38 00 00 01 */	li r0, 1
/* 803FFF8C  3B 80 00 19 */	li r28, 0x19
/* 803FFF90  90 1E 01 8C */	stw r0, 0x18c(r30)
/* 803FFF94  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 803FFF98  80 7B 00 00 */	lwz r3, 0(r27)
/* 803FFF9C  2C 00 00 19 */	cmpwi r0, 0x19
/* 803FFFA0  90 7E 01 94 */	stw r3, 0x194(r30)
/* 803FFFA4  40 82 00 50 */	bne lbl_803FFFF4
/* 803FFFA8  38 00 00 16 */	li r0, 0x16
/* 803FFFAC  90 1E 01 90 */	stw r0, 0x190(r30)
/* 803FFFB0  48 00 00 44 */	b lbl_803FFFF4
lbl_803FFFB4:
/* 803FFFB4  7D 03 43 78 */	mr r3, r8
/* 803FFFB8  3B 80 00 00 */	li r28, 0
/* 803FFFBC  4B FF A5 11 */	bl mCD_ClearMemMgr_com2
/* 803FFFC0  48 00 00 34 */	b lbl_803FFFF4
lbl_803FFFC4:
/* 803FFFC4  2C 06 00 70 */	cmpwi r6, 0x70
/* 803FFFC8  41 80 00 2C */	blt lbl_803FFFF4
/* 803FFFCC  83 88 01 90 */	lwz r28, 0x190(r8)
/* 803FFFD0  38 60 00 47 */	li r3, 0x47
/* 803FFFD4  80 08 01 94 */	lwz r0, 0x194(r8)
/* 803FFFD8  90 1B 00 00 */	stw r0, 0(r27)
/* 803FFFDC  48 22 DF 49 */	bl sAdo_SysLevStop
/* 803FFFE0  7F C3 F3 78 */	mr r3, r30
/* 803FFFE4  4B FF A4 E9 */	bl mCD_ClearMemMgr_com2
/* 803FFFE8  2C 1C 00 00 */	cmpwi r28, 0
/* 803FFFEC  40 82 00 08 */	bne lbl_803FFFF4
/* 803FFFF0  4B FF D5 F1 */	bl mCD_load_famicom_file
lbl_803FFFF4:
/* 803FFFF4  7F 83 E3 78 */	mr r3, r28
/* 803FFFF8  4B FF EE F5 */	bl mCD_GameStart_ChangeErrCode
/* 803FFFFC  2C 03 00 19 */	cmpwi r3, 0x19
/* 80400000  41 82 00 10 */	beq lbl_80400010
/* 80400004  3C 80 81 1C */	lis r4, SoftResetEnable@ha /* 0x811C5324@ha */
/* 80400008  38 00 00 01 */	li r0, 1
/* 8040000C  98 04 53 24 */	stb r0, SoftResetEnable@l(r4)  /* 0x811C5324@l */
lbl_80400010:
/* 80400010  39 61 00 20 */	addi r11, r1, 0x20
/* 80400014  4B C9 AF 05 */	bl func_8009AF18
/* 80400018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040001C  7C 08 03 A6 */	mtlr r0
/* 80400020  38 21 00 20 */	addi r1, r1, 0x20
/* 80400024  4E 80 00 20 */	blr 
