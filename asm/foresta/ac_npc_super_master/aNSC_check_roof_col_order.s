lbl_80583154:
/* 80583154  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80583158  7C 08 02 A6 */	mflr r0
/* 8058315C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80583160  39 61 00 20 */	addi r11, r1, 0x20
/* 80583164  4B B1 7D 6D */	bl func_8009AED0
/* 80583168  7C 7E 1B 78 */	mr r30, r3
/* 8058316C  7C 9F 23 78 */	mr r31, r4
/* 80583170  38 60 00 04 */	li r3, 4
/* 80583174  38 80 00 09 */	li r4, 9
/* 80583178  4B E1 53 05 */	bl mDemo_Get_OrderValue
/* 8058317C  3C 80 80 65 */	lis r4, lit_1370@ha /* 0x80649AC8@ha */
/* 80583180  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80583184  C0 04 9A C8 */	lfs f0, lit_1370@l(r4)  /* 0x80649AC8@l */
/* 80583188  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8058318C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80583190  40 81 00 38 */	ble lbl_805831C8
/* 80583194  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80583198  7F C3 F3 78 */	mr r3, r30
/* 8058319C  4B FF DD 01 */	bl aNSC_set_stop_spd
/* 805831A0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805831A4  7F C3 F3 78 */	mr r3, r30
/* 805831A8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805831AC  38 80 00 05 */	li r4, 5
/* 805831B0  3C C5 00 02 */	addis r6, r5, 2
/* 805831B4  38 A0 00 01 */	li r5, 1
/* 805831B8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 805831BC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 805831C0  7D 89 03 A6 */	mtctr r12
/* 805831C4  4E 80 04 21 */	bctrl 
lbl_805831C8:
/* 805831C8  2C 1D 00 00 */	cmpwi r29, 0
/* 805831CC  41 82 00 A8 */	beq lbl_80583274
/* 805831D0  4B E3 C4 D9 */	bl func_803BF6A8
/* 805831D4  4B E3 DA C5 */	bl mMsg_Check_MainNormalContinue
/* 805831D8  2C 03 00 01 */	cmpwi r3, 1
/* 805831DC  40 82 00 98 */	bne lbl_80583274
/* 805831E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805831E4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805831E8  3C 63 00 02 */	addis r3, r3, 2
/* 805831EC  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 805831F0  4B E3 03 C9 */	bl mHS_get_arrange_idx
/* 805831F4  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 805831F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805831FC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80583200  7C 60 22 14 */	add r3, r0, r4
/* 80583204  3F A3 00 01 */	addis r29, r3, 1
/* 80583208  3B BD 9C E8 */	addi r29, r29, -25368
/* 8058320C  4B E0 03 35 */	bl func_80383540
/* 80583210  4B E0 09 5D */	bl mChoice_Get_ChoseNum
/* 80583214  2C 03 00 03 */	cmpwi r3, 3
/* 80583218  40 80 00 38 */	bge lbl_80583250
/* 8058321C  2C 03 00 00 */	cmpwi r3, 0
/* 80583220  40 80 00 08 */	bge lbl_80583228
/* 80583224  48 00 00 2C */	b lbl_80583250
lbl_80583228:
/* 80583228  88 BD 00 2A */	lbz r5, 0x2a(r29)
/* 8058322C  3B 80 00 02 */	li r28, 2
/* 80583230  54 A4 F7 7E */	rlwinm r4, r5, 0x1e, 0x1d, 0x1f
/* 80583234  38 04 00 01 */	addi r0, r4, 1
/* 80583238  50 05 16 FA */	rlwimi r5, r0, 2, 0x1b, 0x1d
/* 8058323C  98 BD 00 2A */	stb r5, 0x2a(r29)
/* 80583240  98 7D 00 2D */	stb r3, 0x2d(r29)
/* 80583244  7F A3 EB 78 */	mr r3, r29
/* 80583248  4B FF DC C9 */	bl aNSC_set_rehouse_order_date
/* 8058324C  48 00 00 08 */	b lbl_80583254
lbl_80583250:
/* 80583250  3B 80 00 05 */	li r28, 5
lbl_80583254:
/* 80583254  38 60 00 04 */	li r3, 4
/* 80583258  38 80 00 09 */	li r4, 9
/* 8058325C  38 A0 00 00 */	li r5, 0
/* 80583260  4B E1 51 D9 */	bl mDemo_Set_OrderValue
/* 80583264  7F C3 F3 78 */	mr r3, r30
/* 80583268  7F E4 FB 78 */	mr r4, r31
/* 8058326C  7F 85 E3 78 */	mr r5, r28
/* 80583270  48 00 2D 51 */	bl aNSC_setupAction
lbl_80583274:
/* 80583274  39 61 00 20 */	addi r11, r1, 0x20
/* 80583278  4B B1 7C A5 */	bl func_8009AF1C
/* 8058327C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80583280  7C 08 03 A6 */	mtlr r0
/* 80583284  38 21 00 20 */	addi r1, r1, 0x20
/* 80583288  4E 80 00 20 */	blr 
