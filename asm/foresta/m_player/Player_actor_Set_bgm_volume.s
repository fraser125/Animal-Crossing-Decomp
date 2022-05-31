lbl_804DD1BC:
/* 804DD1BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DD1C0  7C 08 02 A6 */	mflr r0
/* 804DD1C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DD1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804DD1CC  4B BB DD 09 */	bl func_8009AED4
/* 804DD1D0  7C 9E 23 79 */	or. r30, r4, r4
/* 804DD1D4  7C 7D 1B 78 */	mr r29, r3
/* 804DD1D8  38 00 00 00 */	li r0, 0
/* 804DD1DC  41 80 00 10 */	blt lbl_804DD1EC
/* 804DD1E0  2C 1E 00 79 */	cmpwi r30, 0x79
/* 804DD1E4  40 80 00 08 */	bge lbl_804DD1EC
/* 804DD1E8  38 00 00 01 */	li r0, 1
lbl_804DD1EC:
/* 804DD1EC  2C 00 00 00 */	cmpwi r0, 0
/* 804DD1F0  41 82 00 70 */	beq lbl_804DD260
/* 804DD1F4  4B EB DC C5 */	bl mEv_CheckTitleDemo
/* 804DD1F8  2C 03 00 00 */	cmpwi r3, 0
/* 804DD1FC  41 81 00 64 */	bgt lbl_804DD260
/* 804DD200  3C 60 80 64 */	lis r3, data_4594@ha /* 0x80647B1C@ha */
/* 804DD204  8B FD 11 F9 */	lbz r31, 0x11f9(r29)
/* 804DD208  38 63 7B 1C */	addi r3, r3, data_4594@l /* 0x80647B1C@l */
/* 804DD20C  7C 63 F0 AE */	lbzx r3, r3, r30
/* 804DD210  7F E0 07 74 */	extsb r0, r31
/* 804DD214  7C 7E 07 74 */	extsb r30, r3
/* 804DD218  7C 00 F0 00 */	cmpw r0, r30
/* 804DD21C  41 82 00 44 */	beq lbl_804DD260
/* 804DD220  2C 1E 00 01 */	cmpwi r30, 1
/* 804DD224  40 82 00 0C */	bne lbl_804DD230
/* 804DD228  4B E9 F4 ED */	bl mBGMPsComp_volume_collect_insects_start
/* 804DD22C  48 00 00 10 */	b lbl_804DD23C
lbl_804DD230:
/* 804DD230  2C 1E 00 02 */	cmpwi r30, 2
/* 804DD234  40 82 00 08 */	bne lbl_804DD23C
/* 804DD238  4B E9 F4 B5 */	bl mBGMPsComp_volume_fishing_start
lbl_804DD23C:
/* 804DD23C  7F E0 07 74 */	extsb r0, r31
/* 804DD240  2C 00 00 01 */	cmpwi r0, 1
/* 804DD244  40 82 00 0C */	bne lbl_804DD250
/* 804DD248  4B E9 F4 E1 */	bl mBGMPsComp_volume_collect_insects_end
/* 804DD24C  48 00 00 10 */	b lbl_804DD25C
lbl_804DD250:
/* 804DD250  2C 00 00 02 */	cmpwi r0, 2
/* 804DD254  40 82 00 08 */	bne lbl_804DD25C
/* 804DD258  4B E9 F4 A9 */	bl mBGMPsComp_volume_fishing_end
lbl_804DD25C:
/* 804DD25C  9B DD 11 F9 */	stb r30, 0x11f9(r29)
lbl_804DD260:
/* 804DD260  39 61 00 20 */	addi r11, r1, 0x20
/* 804DD264  4B BB DC BD */	bl func_8009AF20
/* 804DD268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DD26C  7C 08 03 A6 */	mtlr r0
/* 804DD270  38 21 00 20 */	addi r1, r1, 0x20
/* 804DD274  4E 80 00 20 */	blr 
