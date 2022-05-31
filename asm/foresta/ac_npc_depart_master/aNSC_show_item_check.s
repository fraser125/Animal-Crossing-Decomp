lbl_80550F04:
/* 80550F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550F08  7C 08 02 A6 */	mflr r0
/* 80550F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550F10  39 61 00 20 */	addi r11, r1, 0x20
/* 80550F14  4B B4 9F B5 */	bl func_8009AEC8
/* 80550F18  7C 7C 1B 78 */	mr r28, r3
/* 80550F1C  7C 9D 23 78 */	mr r29, r4
/* 80550F20  4B E6 E7 89 */	bl func_803BF6A8
/* 80550F24  7C 7F 1B 78 */	mr r31, r3
/* 80550F28  4B E6 FD 71 */	bl mMsg_Check_MainNormalContinue
/* 80550F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80550F30  41 82 01 88 */	beq lbl_805510B8
/* 80550F34  A3 7C 09 B4 */	lhz r27, 0x9b4(r28)
/* 80550F38  3B C0 00 1E */	li r30, 0x1e
/* 80550F3C  3B 40 FF FF */	li r26, -1
/* 80550F40  4B E3 26 01 */	bl func_80383540
/* 80550F44  4B E3 2C 29 */	bl mChoice_Get_ChoseNum
/* 80550F48  2C 03 00 01 */	cmpwi r3, 1
/* 80550F4C  41 82 01 04 */	beq lbl_80551050
/* 80550F50  40 80 00 10 */	bge lbl_80550F60
/* 80550F54  2C 03 00 00 */	cmpwi r3, 0
/* 80550F58  40 80 00 14 */	bge lbl_80550F6C
/* 80550F5C  48 00 01 24 */	b lbl_80551080
lbl_80550F60:
/* 80550F60  2C 03 00 03 */	cmpwi r3, 3
/* 80550F64  40 80 01 1C */	bge lbl_80551080
/* 80550F68  48 00 01 10 */	b lbl_80551078
lbl_80550F6C:
/* 80550F6C  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 80550F70  2C 00 00 07 */	cmpwi r0, 7
/* 80550F74  41 82 00 14 */	beq lbl_80550F88
/* 80550F78  40 80 00 78 */	bge lbl_80550FF0
/* 80550F7C  2C 00 00 06 */	cmpwi r0, 6
/* 80550F80  40 80 00 3C */	bge lbl_80550FBC
/* 80550F84  48 00 00 6C */	b lbl_80550FF0
lbl_80550F88:
/* 80550F88  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80550F8C  7F 63 DB 78 */	mr r3, r27
/* 80550F90  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80550F94  3C 84 00 02 */	addis r4, r4, 2
/* 80550F98  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 80550F9C  81 84 00 04 */	lwz r12, 4(r4)
/* 80550FA0  7D 89 03 A6 */	mtctr r12
/* 80550FA4  4E 80 04 21 */	bctrl 
/* 80550FA8  7F A3 EB 78 */	mr r3, r29
/* 80550FAC  3B 40 00 29 */	li r26, 0x29
/* 80550FB0  38 80 00 00 */	li r4, 0
/* 80550FB4  4B FF C5 21 */	bl aNSC_request_show_camera
/* 80550FB8  48 00 00 8C */	b lbl_80551044
lbl_80550FBC:
/* 80550FBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80550FC0  7F 63 DB 78 */	mr r3, r27
/* 80550FC4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80550FC8  3C 84 00 02 */	addis r4, r4, 2
/* 80550FCC  80 84 60 7C */	lwz r4, 0x607c(r4)
/* 80550FD0  81 84 00 08 */	lwz r12, 8(r4)
/* 80550FD4  7D 89 03 A6 */	mtctr r12
/* 80550FD8  4E 80 04 21 */	bctrl 
/* 80550FDC  7F A3 EB 78 */	mr r3, r29
/* 80550FE0  3B 40 00 29 */	li r26, 0x29
/* 80550FE4  38 80 00 01 */	li r4, 1
/* 80550FE8  4B FF C4 ED */	bl aNSC_request_show_camera
/* 80550FEC  48 00 00 58 */	b lbl_80551044
lbl_80550FF0:
/* 80550FF0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80550FF4  88 7C 09 B6 */	lbz r3, 0x9b6(r28)
/* 80550FF8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80550FFC  88 9C 09 B7 */	lbz r4, 0x9b7(r28)
/* 80551000  3C A5 00 02 */	addis r5, r5, 2
/* 80551004  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 80551008  81 85 00 08 */	lwz r12, 8(r5)
/* 8055100C  7D 89 03 A6 */	mtctr r12
/* 80551010  4E 80 04 21 */	bctrl 
/* 80551014  38 00 00 1E */	li r0, 0x1e
/* 80551018  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055101C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80551020  90 1C 09 98 */	stw r0, 0x998(r28)
/* 80551024  3C 63 00 02 */	addis r3, r3, 2
/* 80551028  3B C0 00 27 */	li r30, 0x27
/* 8055102C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80551030  3B 40 00 13 */	li r26, 0x13
/* 80551034  A0 03 10 8A */	lhz r0, 0x108a(r3)
/* 80551038  B0 1C 09 BC */	sth r0, 0x9bc(r28)
/* 8055103C  A0 1C 09 B4 */	lhz r0, 0x9b4(r28)
/* 80551040  B0 1C 09 BE */	sth r0, 0x9be(r28)
lbl_80551044:
/* 80551044  38 00 00 01 */	li r0, 1
/* 80551048  98 1C 09 B8 */	stb r0, 0x9b8(r28)
/* 8055104C  48 00 00 34 */	b lbl_80551080
lbl_80551050:
/* 80551050  57 60 C7 3E */	rlwinm r0, r27, 0x18, 0x1c, 0x1f
/* 80551054  2C 00 00 08 */	cmpwi r0, 8
/* 80551058  40 80 00 18 */	bge lbl_80551070
/* 8055105C  2C 00 00 06 */	cmpwi r0, 6
/* 80551060  40 80 00 08 */	bge lbl_80551068
/* 80551064  48 00 00 0C */	b lbl_80551070
lbl_80551068:
/* 80551068  3B 40 00 2A */	li r26, 0x2a
/* 8055106C  48 00 00 14 */	b lbl_80551080
lbl_80551070:
/* 80551070  3B 40 00 14 */	li r26, 0x14
/* 80551074  48 00 00 0C */	b lbl_80551080
lbl_80551078:
/* 80551078  3B C0 00 21 */	li r30, 0x21
/* 8055107C  3B 40 00 1F */	li r26, 0x1f
lbl_80551080:
/* 80551080  2C 1A FF FF */	cmpwi r26, -1
/* 80551084  41 82 00 34 */	beq lbl_805510B8
/* 80551088  7F 43 D3 78 */	mr r3, r26
/* 8055108C  4B FF D5 71 */	bl aNSC_get_msg_no
/* 80551090  7C 65 1B 78 */	mr r5, r3
/* 80551094  7F E3 FB 78 */	mr r3, r31
/* 80551098  7F 84 E3 78 */	mr r4, r28
/* 8055109C  4B FF D5 A9 */	bl aNSC_Set_continue_msg_num
/* 805510A0  7F E3 FB 78 */	mr r3, r31
/* 805510A4  4B E6 FC 85 */	bl mMsg_Set_ForceNext
/* 805510A8  7F 83 E3 78 */	mr r3, r28
/* 805510AC  7F A4 EB 78 */	mr r4, r29
/* 805510B0  7F C5 F3 78 */	mr r5, r30
/* 805510B4  48 00 17 81 */	bl aNSC_setupAction
lbl_805510B8:
/* 805510B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805510BC  4B B4 9E 59 */	bl func_8009AF14
/* 805510C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805510C4  7C 08 03 A6 */	mtlr r0
/* 805510C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805510CC  4E 80 00 20 */	blr 
