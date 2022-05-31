lbl_80628A20:
/* 80628A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80628A24  7C 08 02 A6 */	mflr r0
/* 80628A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80628A2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80628A30  4B A7 24 9D */	bl func_8009AECC
/* 80628A34  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 80628A38  7C 7F 1B 78 */	mr r31, r3
/* 80628A3C  38 64 80 00 */	addi r3, r4, 0x8000 /* 0x00008000@l */
/* 80628A40  4B D6 D4 D1 */	bl chkTrigger
/* 80628A44  2C 03 00 00 */	cmpwi r3, 0
/* 80628A48  40 82 00 14 */	bne lbl_80628A5C
/* 80628A4C  38 60 10 00 */	li r3, 0x1000
/* 80628A50  4B D6 D4 C1 */	bl chkTrigger
/* 80628A54  2C 03 00 00 */	cmpwi r3, 0
/* 80628A58  41 82 00 30 */	beq lbl_80628A88
lbl_80628A5C:
/* 80628A5C  38 00 00 01 */	li r0, 1
/* 80628A60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80628A64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80628A68  90 1F 02 00 */	stw r0, 0x200(r31)
/* 80628A6C  3C 63 00 02 */	addis r3, r3, 2
/* 80628A70  80 03 61 30 */	lwz r0, 0x6130(r3)
/* 80628A74  2C 00 00 01 */	cmpwi r0, 1
/* 80628A78  40 82 01 98 */	bne lbl_80628C10
/* 80628A7C  38 63 61 20 */	addi r3, r3, 0x6120
/* 80628A80  4B DD DB FD */	bl lbRTC_SetTime
/* 80628A84  48 00 01 8C */	b lbl_80628C10
lbl_80628A88:
/* 80628A88  38 60 02 00 */	li r3, 0x200
/* 80628A8C  4B D6 D4 85 */	bl chkTrigger
/* 80628A90  2C 03 00 00 */	cmpwi r3, 0
/* 80628A94  41 82 00 28 */	beq lbl_80628ABC
/* 80628A98  80 7F 02 04 */	lwz r3, 0x204(r31)
/* 80628A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80628AA0  40 82 00 10 */	bne lbl_80628AB0
/* 80628AA4  38 00 00 04 */	li r0, 4
/* 80628AA8  90 1F 02 04 */	stw r0, 0x204(r31)
/* 80628AAC  48 00 01 64 */	b lbl_80628C10
lbl_80628AB0:
/* 80628AB0  38 03 FF FF */	addi r0, r3, -1
/* 80628AB4  90 1F 02 04 */	stw r0, 0x204(r31)
/* 80628AB8  48 00 01 58 */	b lbl_80628C10
lbl_80628ABC:
/* 80628ABC  38 60 01 00 */	li r3, 0x100
/* 80628AC0  4B D6 D4 51 */	bl chkTrigger
/* 80628AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80628AC8  41 82 00 24 */	beq lbl_80628AEC
/* 80628ACC  80 9F 02 04 */	lwz r4, 0x204(r31)
/* 80628AD0  38 60 00 05 */	li r3, 5
/* 80628AD4  38 84 00 01 */	addi r4, r4, 1
/* 80628AD8  7C 04 1B D6 */	divw r0, r4, r3
/* 80628ADC  7C 00 19 D6 */	mullw r0, r0, r3
/* 80628AE0  7C 00 20 50 */	subf r0, r0, r4
/* 80628AE4  90 1F 02 04 */	stw r0, 0x204(r31)
/* 80628AE8  48 00 01 28 */	b lbl_80628C10
lbl_80628AEC:
/* 80628AEC  3B 80 00 00 */	li r28, 0
/* 80628AF0  38 60 04 00 */	li r3, 0x400
/* 80628AF4  4B D6 D3 7D */	bl chkButton
/* 80628AF8  2C 03 00 00 */	cmpwi r3, 0
/* 80628AFC  41 82 00 44 */	beq lbl_80628B40
/* 80628B00  38 60 04 00 */	li r3, 0x400
/* 80628B04  4B D6 D4 0D */	bl chkTrigger
/* 80628B08  2C 03 00 00 */	cmpwi r3, 0
/* 80628B0C  41 82 00 10 */	beq lbl_80628B1C
/* 80628B10  38 00 FF F0 */	li r0, -16
/* 80628B14  3B 80 FF FF */	li r28, -1
/* 80628B18  90 1F 02 20 */	stw r0, 0x220(r31)
lbl_80628B1C:
/* 80628B1C  80 7F 02 20 */	lwz r3, 0x220(r31)
/* 80628B20  38 03 00 01 */	addi r0, r3, 1
/* 80628B24  90 1F 02 20 */	stw r0, 0x220(r31)
/* 80628B28  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 80628B2C  2C 00 00 06 */	cmpwi r0, 6
/* 80628B30  40 82 00 10 */	bne lbl_80628B40
/* 80628B34  38 00 00 00 */	li r0, 0
/* 80628B38  3B 80 FF FF */	li r28, -1
/* 80628B3C  90 1F 02 20 */	stw r0, 0x220(r31)
lbl_80628B40:
/* 80628B40  38 60 08 00 */	li r3, 0x800
/* 80628B44  4B D6 D3 2D */	bl chkButton
/* 80628B48  2C 03 00 00 */	cmpwi r3, 0
/* 80628B4C  41 82 00 44 */	beq lbl_80628B90
/* 80628B50  38 60 08 00 */	li r3, 0x800
/* 80628B54  4B D6 D3 BD */	bl chkTrigger
/* 80628B58  2C 03 00 00 */	cmpwi r3, 0
/* 80628B5C  41 82 00 10 */	beq lbl_80628B6C
/* 80628B60  38 00 00 10 */	li r0, 0x10
/* 80628B64  3B 80 00 01 */	li r28, 1
/* 80628B68  90 1F 02 20 */	stw r0, 0x220(r31)
lbl_80628B6C:
/* 80628B6C  80 7F 02 20 */	lwz r3, 0x220(r31)
/* 80628B70  38 03 FF FF */	addi r0, r3, -1
/* 80628B74  90 1F 02 20 */	stw r0, 0x220(r31)
/* 80628B78  80 1F 02 20 */	lwz r0, 0x220(r31)
/* 80628B7C  2C 00 FF FA */	cmpwi r0, -6
/* 80628B80  40 82 00 10 */	bne lbl_80628B90
/* 80628B84  38 00 00 00 */	li r0, 0
/* 80628B88  3B 80 00 01 */	li r28, 1
/* 80628B8C  90 1F 02 20 */	stw r0, 0x220(r31)
lbl_80628B90:
/* 80628B90  38 60 40 00 */	li r3, 0x4000
/* 80628B94  4B D6 D2 DD */	bl chkButton
/* 80628B98  2C 03 00 00 */	cmpwi r3, 0
/* 80628B9C  41 82 00 08 */	beq lbl_80628BA4
/* 80628BA0  1F 9C 00 0A */	mulli r28, r28, 0xa
lbl_80628BA4:
/* 80628BA4  3C 60 80 6D */	lis r3, process_804@ha /* 0x806D4258@ha */
/* 80628BA8  3B 60 00 00 */	li r27, 0
/* 80628BAC  3B A3 42 58 */	addi r29, r3, process_804@l /* 0x806D4258@l */
/* 80628BB0  3B C0 00 00 */	li r30, 0
lbl_80628BB4:
/* 80628BB4  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 80628BB8  7C 1B 00 00 */	cmpw r27, r0
/* 80628BBC  40 82 00 1C */	bne lbl_80628BD8
/* 80628BC0  7D 9D F0 2E */	lwzx r12, r29, r30
/* 80628BC4  7F 83 E3 78 */	mr r3, r28
/* 80628BC8  7D 89 03 A6 */	mtctr r12
/* 80628BCC  4E 80 04 21 */	bctrl 
/* 80628BD0  7F 83 E3 78 */	mr r3, r28
/* 80628BD4  4B FF FD E1 */	bl select_move_time_week_set
lbl_80628BD8:
/* 80628BD8  3B 7B 00 01 */	addi r27, r27, 1
/* 80628BDC  3B DE 00 04 */	addi r30, r30, 4
/* 80628BE0  2C 1B 00 05 */	cmpwi r27, 5
/* 80628BE4  41 80 FF D0 */	blt lbl_80628BB4
/* 80628BE8  2C 1C 00 00 */	cmpwi r28, 0
/* 80628BEC  41 82 00 24 */	beq lbl_80628C10
/* 80628BF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80628BF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80628BF8  3C 63 00 02 */	addis r3, r3, 2
/* 80628BFC  80 03 61 30 */	lwz r0, 0x6130(r3)
/* 80628C00  2C 00 00 01 */	cmpwi r0, 1
/* 80628C04  40 82 00 0C */	bne lbl_80628C10
/* 80628C08  38 63 61 20 */	addi r3, r3, 0x6120
/* 80628C0C  4B DD DA 71 */	bl lbRTC_SetTime
lbl_80628C10:
/* 80628C10  39 61 00 20 */	addi r11, r1, 0x20
/* 80628C14  4B A7 23 05 */	bl func_8009AF18
/* 80628C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80628C1C  7C 08 03 A6 */	mtlr r0
/* 80628C20  38 21 00 20 */	addi r1, r1, 0x20
/* 80628C24  4E 80 00 20 */	blr 
