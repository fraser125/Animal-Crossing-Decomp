lbl_804EB158:
/* 804EB158  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EB15C  7C 08 02 A6 */	mflr r0
/* 804EB160  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EB164  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB168  4B BA FD 6D */	bl func_8009AED4
/* 804EB16C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804EB170  7C 7D 1B 78 */	mr r29, r3
/* 804EB174  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 804EB178  7C 9E 23 78 */	mr r30, r4
/* 804EB17C  3C 63 00 02 */	addis r3, r3, 2
/* 804EB180  80 83 60 8C */	lwz r4, 0x608c(r3)
/* 804EB184  28 04 00 00 */	cmplwi r4, 0
/* 804EB188  41 82 00 6C */	beq lbl_804EB1F4
/* 804EB18C  83 FD 0D 18 */	lwz r31, 0xd18(r29)
/* 804EB190  38 60 00 00 */	li r3, 0
/* 804EB194  81 84 00 10 */	lwz r12, 0x10(r4)
/* 804EB198  38 80 00 00 */	li r4, 0
/* 804EB19C  7F E5 FB 78 */	mr r5, r31
/* 804EB1A0  7D 89 03 A6 */	mtctr r12
/* 804EB1A4  4E 80 04 21 */	bctrl 
/* 804EB1A8  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 804EB1AC  7C 03 00 00 */	cmpw r3, r0
/* 804EB1B0  41 82 00 44 */	beq lbl_804EB1F4
/* 804EB1B4  A8 7D 00 36 */	lha r3, 0x36(r29)
/* 804EB1B8  4B FE C0 95 */	bl Player_actor_Get_Index_fromAngle
/* 804EB1BC  80 1D 0D 28 */	lwz r0, 0xd28(r29)
/* 804EB1C0  7C 65 1B 78 */	mr r5, r3
/* 804EB1C4  38 E0 00 00 */	li r7, 0
/* 804EB1C8  2C 00 00 00 */	cmpwi r0, 0
/* 804EB1CC  40 82 00 08 */	bne lbl_804EB1D4
/* 804EB1D0  60 E7 00 01 */	ori r7, r7, 1
lbl_804EB1D4:
/* 804EB1D4  3C 80 80 65 */	lis r4, lit_8374@ha /* 0x80648494@ha */
/* 804EB1D8  7F C3 F3 78 */	mr r3, r30
/* 804EB1DC  38 C4 84 94 */	addi r6, r4, lit_8374@l /* 0x80648494@l */
/* 804EB1E0  39 00 00 16 */	li r8, 0x16
/* 804EB1E4  C0 26 00 00 */	lfs f1, 0(r6)
/* 804EB1E8  7F E4 FB 78 */	mr r4, r31
/* 804EB1EC  38 DD 00 28 */	addi r6, r29, 0x28
/* 804EB1F0  4B FF EC C9 */	bl Player_actor_request_main_hold
lbl_804EB1F4:
/* 804EB1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804EB1F8  4B BA FD 29 */	bl func_8009AF20
/* 804EB1FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EB200  7C 08 03 A6 */	mtlr r0
/* 804EB204  38 21 00 20 */	addi r1, r1, 0x20
/* 804EB208  4E 80 00 20 */	blr 
