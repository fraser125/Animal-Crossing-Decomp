lbl_80562C10:
/* 80562C10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80562C14  7C 08 02 A6 */	mflr r0
/* 80562C18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80562C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80562C20  4B B3 82 B5 */	bl func_8009AED4
/* 80562C24  7C 7D 1B 78 */	mr r29, r3
/* 80562C28  3B C4 1D EC */	addi r30, r4, 0x1dec
/* 80562C2C  4B E5 CA 7D */	bl func_803BF6A8
/* 80562C30  88 1E 01 62 */	lbz r0, 0x162(r30)
/* 80562C34  7C 7F 1B 78 */	mr r31, r3
/* 80562C38  28 00 00 00 */	cmplwi r0, 0
/* 80562C3C  40 82 02 24 */	bne lbl_80562E60
/* 80562C40  80 9E 01 74 */	lwz r4, 0x174(r30)
/* 80562C44  A0 04 00 00 */	lhz r0, 0(r4)
/* 80562C48  28 00 FF FF */	cmplwi r0, 0xffff
/* 80562C4C  40 82 01 F0 */	bne lbl_80562E3C
/* 80562C50  88 84 00 02 */	lbz r4, 2(r4)
/* 80562C54  7F C3 F3 78 */	mr r3, r30
/* 80562C58  48 08 6B C9 */	bl mNW_get_image_no
/* 80562C5C  98 7D 09 AE */	stb r3, 0x9ae(r29)
/* 80562C60  88 1D 09 B2 */	lbz r0, 0x9b2(r29)
/* 80562C64  88 7D 09 AE */	lbz r3, 0x9ae(r29)
/* 80562C68  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80562C6C  38 63 01 00 */	addi r3, r3, 0x100
/* 80562C70  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 80562C74  41 82 00 98 */	beq lbl_80562D0C
/* 80562C78  40 80 00 10 */	bge lbl_80562C88
/* 80562C7C  2C 00 00 18 */	cmpwi r0, 0x18
/* 80562C80  41 82 00 14 */	beq lbl_80562C94
/* 80562C84  48 00 01 80 */	b lbl_80562E04
lbl_80562C88:
/* 80562C88  2C 00 00 20 */	cmpwi r0, 0x20
/* 80562C8C  41 82 01 28 */	beq lbl_80562DB4
/* 80562C90  48 00 01 74 */	b lbl_80562E04
lbl_80562C94:
/* 80562C94  7F E3 FB 78 */	mr r3, r31
/* 80562C98  38 80 2F FA */	li r4, 0x2ffa
/* 80562C9C  4B E5 DC FD */	bl mMsg_ChangeMsgData
/* 80562CA0  88 7D 09 B5 */	lbz r3, 0x9b5(r29)
/* 80562CA4  28 03 00 04 */	cmplwi r3, 4
/* 80562CA8  40 80 00 30 */	bge lbl_80562CD8
/* 80562CAC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80562CB0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80562CB4  88 9D 09 AE */	lbz r4, 0x9ae(r29)
/* 80562CB8  3C A5 00 02 */	addis r5, r5, 2
/* 80562CBC  80 A5 60 30 */	lwz r5, 0x6030(r5)
/* 80562CC0  81 85 00 18 */	lwz r12, 0x18(r5)
/* 80562CC4  7D 89 03 A6 */	mtctr r12
/* 80562CC8  4E 80 04 21 */	bctrl 
/* 80562CCC  88 7D 09 B5 */	lbz r3, 0x9b5(r29)
/* 80562CD0  4B FF ED AD */	bl aNNW_trend_delete_cloth
/* 80562CD4  48 00 01 30 */	b lbl_80562E04
lbl_80562CD8:
/* 80562CD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80562CDC  38 63 FF FC */	addi r3, r3, -4
/* 80562CE0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80562CE4  88 9D 09 AE */	lbz r4, 0x9ae(r29)
/* 80562CE8  3C A5 00 02 */	addis r5, r5, 2
/* 80562CEC  80 A5 60 30 */	lwz r5, 0x6030(r5)
/* 80562CF0  81 85 00 38 */	lwz r12, 0x38(r5)
/* 80562CF4  7D 89 03 A6 */	mtctr r12
/* 80562CF8  4E 80 04 21 */	bctrl 
/* 80562CFC  88 7D 09 B5 */	lbz r3, 0x9b5(r29)
/* 80562D00  38 63 FF FC */	addi r3, r3, -4
/* 80562D04  4B FF EE 9D */	bl aNNW_trend_delete_umbrella
/* 80562D08  48 00 00 FC */	b lbl_80562E04
lbl_80562D0C:
/* 80562D0C  7F E3 FB 78 */	mr r3, r31
/* 80562D10  38 80 2F F8 */	li r4, 0x2ff8
/* 80562D14  4B E5 DC 85 */	bl mMsg_ChangeMsgData
/* 80562D18  88 BD 09 B5 */	lbz r5, 0x9b5(r29)
/* 80562D1C  28 05 00 04 */	cmplwi r5, 4
/* 80562D20  40 80 00 48 */	bge lbl_80562D68
/* 80562D24  88 1D 09 AE */	lbz r0, 0x9ae(r29)
/* 80562D28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80562D2C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80562D30  54 A3 07 BE */	clrlwi r3, r5, 0x1e
/* 80562D34  3C C4 00 02 */	addis r6, r4, 2
/* 80562D38  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 80562D3C  1C A0 02 20 */	mulli r5, r0, 0x220
/* 80562D40  80 86 60 30 */	lwz r4, 0x6030(r6)
/* 80562D44  80 06 61 3C */	lwz r0, 0x613c(r6)
/* 80562D48  81 84 00 08 */	lwz r12, 8(r4)
/* 80562D4C  38 85 12 40 */	addi r4, r5, 0x1240
/* 80562D50  7C 80 22 14 */	add r4, r0, r4
/* 80562D54  7D 89 03 A6 */	mtctr r12
/* 80562D58  4E 80 04 21 */	bctrl 
/* 80562D5C  88 7D 09 B5 */	lbz r3, 0x9b5(r29)
/* 80562D60  4B FF ED 1D */	bl aNNW_trend_delete_cloth
/* 80562D64  48 00 00 A0 */	b lbl_80562E04
lbl_80562D68:
/* 80562D68  88 1D 09 AE */	lbz r0, 0x9ae(r29)
/* 80562D6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80562D70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80562D74  38 C5 FF FC */	addi r6, r5, -4
/* 80562D78  3C 63 00 02 */	addis r3, r3, 2
/* 80562D7C  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 80562D80  1C A0 02 20 */	mulli r5, r0, 0x220
/* 80562D84  80 83 60 30 */	lwz r4, 0x6030(r3)
/* 80562D88  80 03 61 3C */	lwz r0, 0x613c(r3)
/* 80562D8C  54 C3 07 BE */	clrlwi r3, r6, 0x1e
/* 80562D90  81 84 00 28 */	lwz r12, 0x28(r4)
/* 80562D94  38 85 12 40 */	addi r4, r5, 0x1240
/* 80562D98  7C 80 22 14 */	add r4, r0, r4
/* 80562D9C  7D 89 03 A6 */	mtctr r12
/* 80562DA0  4E 80 04 21 */	bctrl 
/* 80562DA4  88 7D 09 B5 */	lbz r3, 0x9b5(r29)
/* 80562DA8  38 63 FF FC */	addi r3, r3, -4
/* 80562DAC  4B FF ED F5 */	bl aNNW_trend_delete_umbrella
/* 80562DB0  48 00 00 54 */	b lbl_80562E04
lbl_80562DB4:
/* 80562DB4  7F E3 FB 78 */	mr r3, r31
/* 80562DB8  38 80 2F F9 */	li r4, 0x2ff9
/* 80562DBC  4B E5 DB DD */	bl mMsg_ChangeMsgData
/* 80562DC0  88 9D 09 B5 */	lbz r4, 0x9b5(r29)
/* 80562DC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80562DC8  88 1D 09 AE */	lbz r0, 0x9ae(r29)
/* 80562DCC  38 E3 85 38 */	addi r7, r3, common_data@l /* 0x81138538@l */
/* 80562DD0  54 83 07 7E */	clrlwi r3, r4, 0x1d
/* 80562DD4  38 A0 02 20 */	li r5, 0x220
/* 80562DD8  1D 03 02 20 */	mulli r8, r3, 0x220
/* 80562DDC  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 80562DE0  3C 67 00 02 */	addis r3, r7, 2
/* 80562DE4  80 C3 61 3C */	lwz r6, 0x613c(r3)
/* 80562DE8  1C 80 02 20 */	mulli r4, r0, 0x220
/* 80562DEC  7C 67 42 14 */	add r3, r7, r8
/* 80562DF0  3C 63 00 02 */	addis r3, r3, 2
/* 80562DF4  38 84 12 40 */	addi r4, r4, 0x1240
/* 80562DF8  7C 86 22 14 */	add r4, r6, r4
/* 80562DFC  38 63 14 00 */	addi r3, r3, 0x1400
/* 80562E00  4B AF A2 1D */	bl func_8005D01C
lbl_80562E04:
/* 80562E04  88 1D 09 B2 */	lbz r0, 0x9b2(r29)
/* 80562E08  28 00 00 1C */	cmplwi r0, 0x1c
/* 80562E0C  41 82 00 38 */	beq lbl_80562E44
/* 80562E10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80562E14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80562E18  3C 63 00 02 */	addis r3, r3, 2
/* 80562E1C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80562E20  A0 03 10 88 */	lhz r0, 0x1088(r3)
/* 80562E24  7C 1E 00 40 */	cmplw r30, r0
/* 80562E28  40 82 00 1C */	bne lbl_80562E44
/* 80562E2C  7F A3 EB 78 */	mr r3, r29
/* 80562E30  38 80 00 2F */	li r4, 0x2f
/* 80562E34  48 00 16 55 */	bl aNNW_change_talk_proc
/* 80562E38  48 00 00 28 */	b lbl_80562E60
lbl_80562E3C:
/* 80562E3C  38 80 2F F5 */	li r4, 0x2ff5
/* 80562E40  4B E5 DB 59 */	bl mMsg_ChangeMsgData
lbl_80562E44:
/* 80562E44  7F E3 FB 78 */	mr r3, r31
/* 80562E48  4B E5 DE E1 */	bl mMsg_Set_ForceNext
/* 80562E4C  7F E3 FB 78 */	mr r3, r31
/* 80562E50  4B E5 CD 39 */	bl mMsg_request_main_appear_wait_type1
/* 80562E54  7F A3 EB 78 */	mr r3, r29
/* 80562E58  38 80 00 41 */	li r4, 0x41
/* 80562E5C  48 00 16 2D */	bl aNNW_change_talk_proc
lbl_80562E60:
/* 80562E60  39 61 00 20 */	addi r11, r1, 0x20
/* 80562E64  4B B3 80 BD */	bl func_8009AF20
/* 80562E68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80562E6C  7C 08 03 A6 */	mtlr r0
/* 80562E70  38 21 00 20 */	addi r1, r1, 0x20
/* 80562E74  4E 80 00 20 */	blr 
