lbl_804E10AC:
/* 804E10AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E10B0  7C 08 02 A6 */	mflr r0
/* 804E10B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E10B8  39 61 00 30 */	addi r11, r1, 0x30
/* 804E10BC  4B BB 9D 81 */	bl func_8009AE3C
/* 804E10C0  39 61 00 18 */	addi r11, r1, 0x18
/* 804E10C4  4B BB 9E 0D */	bl func_8009AED0
/* 804E10C8  7C 9F 23 79 */	or. r31, r4, r4
/* 804E10CC  FF A0 08 90 */	fmr f29, f1
/* 804E10D0  FF C0 10 90 */	fmr f30, f2
/* 804E10D4  7C 7E 1B 78 */	mr r30, r3
/* 804E10D8  FF E0 18 90 */	fmr f31, f3
/* 804E10DC  7C BC 2B 78 */	mr r28, r5
/* 804E10E0  7C DD 33 78 */	mr r29, r6
/* 804E10E4  41 80 00 2C */	blt lbl_804E1110
/* 804E10E8  7F E3 FB 78 */	mr r3, r31
/* 804E10EC  4B EF 7B C9 */	bl mPlib_Get_BasicItemShapeIndex_fromItemKind
/* 804E10F0  FC 20 E8 90 */	fmr f1, f29
/* 804E10F4  7C 64 1B 78 */	mr r4, r3
/* 804E10F8  FC 40 F0 90 */	fmr f2, f30
/* 804E10FC  7F C3 F3 78 */	mr r3, r30
/* 804E1100  FC 60 F8 90 */	fmr f3, f31
/* 804E1104  7F 85 E3 78 */	mr r5, r28
/* 804E1108  7F A6 EB 78 */	mr r6, r29
/* 804E110C  4B FF FB 71 */	bl Player_actor_Item_DMA_Data
lbl_804E1110:
/* 804E1110  2C 1F 00 0B */	cmpwi r31, 0xb
/* 804E1114  38 00 00 00 */	li r0, 0
/* 804E1118  41 80 00 10 */	blt lbl_804E1128
/* 804E111C  2C 1F 00 33 */	cmpwi r31, 0x33
/* 804E1120  40 80 00 08 */	bge lbl_804E1128
/* 804E1124  38 00 00 01 */	li r0, 1
lbl_804E1128:
/* 804E1128  2C 00 00 00 */	cmpwi r0, 0
/* 804E112C  40 82 00 50 */	bne lbl_804E117C
/* 804E1130  80 9E 0E 64 */	lwz r4, 0xe64(r30)
/* 804E1134  28 04 00 00 */	cmplwi r4, 0
/* 804E1138  41 82 00 38 */	beq lbl_804E1170
/* 804E113C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E1140  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E1144  3C 63 00 02 */	addis r3, r3, 2
/* 804E1148  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 804E114C  28 03 00 00 */	cmplwi r3, 0
/* 804E1150  41 82 00 20 */	beq lbl_804E1170
/* 804E1154  81 83 00 04 */	lwz r12, 4(r3)
/* 804E1158  7F C3 F3 78 */	mr r3, r30
/* 804E115C  38 A0 00 03 */	li r5, 3
/* 804E1160  7D 89 03 A6 */	mtctr r12
/* 804E1164  4E 80 04 21 */	bctrl 
/* 804E1168  38 00 00 00 */	li r0, 0
/* 804E116C  90 1E 0E 64 */	stw r0, 0xe64(r30)
lbl_804E1170:
/* 804E1170  38 00 00 04 */	li r0, 4
/* 804E1174  90 1E 0E 68 */	stw r0, 0xe68(r30)
/* 804E1178  48 00 00 5C */	b lbl_804E11D4
lbl_804E117C:
/* 804E117C  80 9E 0E 64 */	lwz r4, 0xe64(r30)
/* 804E1180  28 04 00 00 */	cmplwi r4, 0
/* 804E1184  41 82 00 50 */	beq lbl_804E11D4
/* 804E1188  80 04 01 74 */	lwz r0, 0x174(r4)
/* 804E118C  38 7F FF F5 */	addi r3, r31, -11
/* 804E1190  7C 03 00 00 */	cmpw r3, r0
/* 804E1194  41 82 00 40 */	beq lbl_804E11D4
/* 804E1198  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E119C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E11A0  3C 63 00 02 */	addis r3, r3, 2
/* 804E11A4  80 63 60 A0 */	lwz r3, 0x60a0(r3)
/* 804E11A8  28 03 00 00 */	cmplwi r3, 0
/* 804E11AC  41 82 00 20 */	beq lbl_804E11CC
/* 804E11B0  81 83 00 04 */	lwz r12, 4(r3)
/* 804E11B4  7F C3 F3 78 */	mr r3, r30
/* 804E11B8  38 A0 00 03 */	li r5, 3
/* 804E11BC  7D 89 03 A6 */	mtctr r12
/* 804E11C0  4E 80 04 21 */	bctrl 
/* 804E11C4  38 00 00 00 */	li r0, 0
/* 804E11C8  90 1E 0E 64 */	stw r0, 0xe64(r30)
lbl_804E11CC:
/* 804E11CC  38 00 00 04 */	li r0, 4
/* 804E11D0  90 1E 0E 68 */	stw r0, 0xe68(r30)
lbl_804E11D4:
/* 804E11D4  2C 1F 00 33 */	cmpwi r31, 0x33
/* 804E11D8  38 00 00 00 */	li r0, 0
/* 804E11DC  41 80 00 10 */	blt lbl_804E11EC
/* 804E11E0  2C 1F 00 35 */	cmpwi r31, 0x35
/* 804E11E4  40 80 00 08 */	bge lbl_804E11EC
/* 804E11E8  38 00 00 01 */	li r0, 1
lbl_804E11EC:
/* 804E11EC  2C 00 00 00 */	cmpwi r0, 0
/* 804E11F0  40 82 00 10 */	bne lbl_804E1200
/* 804E11F4  7F C3 F3 78 */	mr r3, r30
/* 804E11F8  38 80 00 00 */	li r4, 0
/* 804E11FC  4B FF FB B9 */	bl Player_actor_Item_Set_Command_forUki
lbl_804E1200:
/* 804E1200  39 61 00 30 */	addi r11, r1, 0x30
/* 804E1204  4B BB 9C 85 */	bl func_8009AE88
/* 804E1208  39 61 00 18 */	addi r11, r1, 0x18
/* 804E120C  4B BB 9D 11 */	bl func_8009AF1C
/* 804E1210  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E1214  7C 08 03 A6 */	mtlr r0
/* 804E1218  38 21 00 30 */	addi r1, r1, 0x30
/* 804E121C  4E 80 00 20 */	blr 
