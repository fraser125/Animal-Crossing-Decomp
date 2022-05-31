lbl_803D3EF8:
/* 803D3EF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D3EFC  7C 08 02 A6 */	mflr r0
/* 803D3F00  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D3F04  39 61 00 20 */	addi r11, r1, 0x20
/* 803D3F08  4B CC 6F C5 */	bl func_8009AECC
/* 803D3F0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D3F10  7C 7B 1B 78 */	mr r27, r3
/* 803D3F14  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803D3F18  3C 63 00 02 */	addis r3, r3, 2
/* 803D3F1C  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D3F20  48 00 06 15 */	bl mNpc_GetIslandRoomP
/* 803D3F24  7C 7F 1B 79 */	or. r31, r3, r3
/* 803D3F28  3B C0 00 00 */	li r30, 0
/* 803D3F2C  3B A0 FF FF */	li r29, -1
/* 803D3F30  41 82 01 64 */	beq lbl_803D4094
/* 803D3F34  57 60 A7 3E */	rlwinm r0, r27, 0x14, 0x1c, 0x1f
/* 803D3F38  2C 00 00 01 */	cmpwi r0, 1
/* 803D3F3C  41 82 00 0C */	beq lbl_803D3F48
/* 803D3F40  2C 00 00 03 */	cmpwi r0, 3
/* 803D3F44  40 82 01 50 */	bne lbl_803D4094
lbl_803D3F48:
/* 803D3F48  7F 63 DB 78 */	mr r3, r27
/* 803D3F4C  48 00 0A 85 */	bl mNpc_CheckFtrIsIslandBestFtr
/* 803D3F50  2C 03 00 01 */	cmpwi r3, 1
/* 803D3F54  40 82 00 70 */	bne lbl_803D3FC4
/* 803D3F58  3B 80 00 00 */	li r28, 0
lbl_803D3F5C:
/* 803D3F5C  A0 9F 00 00 */	lhz r4, 0(r31)
/* 803D3F60  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D3F64  2C 00 00 01 */	cmpwi r0, 1
/* 803D3F68  41 82 00 0C */	beq lbl_803D3F74
/* 803D3F6C  2C 00 00 03 */	cmpwi r0, 3
/* 803D3F70  40 82 00 24 */	bne lbl_803D3F94
lbl_803D3F74:
/* 803D3F74  7F 63 DB 78 */	mr r3, r27
/* 803D3F78  48 09 FC 51 */	bl aMR_CorrespondFurniture
/* 803D3F7C  2C 03 00 01 */	cmpwi r3, 1
/* 803D3F80  40 82 00 0C */	bne lbl_803D3F8C
/* 803D3F84  7F DD F3 78 */	mr r29, r30
/* 803D3F88  48 00 01 0C */	b lbl_803D4094
lbl_803D3F8C:
/* 803D3F8C  3B DE 00 01 */	addi r30, r30, 1
/* 803D3F90  48 00 00 18 */	b lbl_803D3FA8
lbl_803D3F94:
/* 803D3F94  28 04 FE B3 */	cmplwi r4, 0xfeb3
/* 803D3F98  41 80 00 10 */	blt lbl_803D3FA8
/* 803D3F9C  28 04 FE C2 */	cmplwi r4, 0xfec2
/* 803D3FA0  41 81 00 08 */	bgt lbl_803D3FA8
/* 803D3FA4  3B DE 00 01 */	addi r30, r30, 1
lbl_803D3FA8:
/* 803D3FA8  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D3FAC  41 82 00 E8 */	beq lbl_803D4094
/* 803D3FB0  3B 9C 00 01 */	addi r28, r28, 1
/* 803D3FB4  3B FF 00 02 */	addi r31, r31, 2
/* 803D3FB8  2C 1C 01 00 */	cmpwi r28, 0x100
/* 803D3FBC  41 80 FF A0 */	blt lbl_803D3F5C
/* 803D3FC0  48 00 00 D4 */	b lbl_803D4094
lbl_803D3FC4:
/* 803D3FC4  7F 63 DB 78 */	mr r3, r27
/* 803D3FC8  48 09 FB 85 */	bl aMR_GetFurnitureUnit
/* 803D3FCC  2C 03 00 00 */	cmpwi r3, 0
/* 803D3FD0  40 82 00 14 */	bne lbl_803D3FE4
/* 803D3FD4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FEB3@ha */
/* 803D3FD8  38 A3 FE B3 */	addi r5, r3, 0xFEB3 /* 0x0000FEB3@l */
/* 803D3FDC  38 C3 FE B7 */	addi r6, r3, -329
/* 803D3FE0  48 00 00 20 */	b lbl_803D4000
lbl_803D3FE4:
/* 803D3FE4  38 03 00 01 */	addi r0, r3, 1
/* 803D3FE8  38 C0 00 00 */	li r6, 0
/* 803D3FEC  54 03 10 3A */	slwi r3, r0, 2
/* 803D3FF0  3C 63 00 01 */	addis r3, r3, 1
/* 803D3FF4  38 03 FE B3 */	addi r0, r3, -333
/* 803D3FF8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D3FFC  7C 05 03 78 */	mr r5, r0
lbl_803D4000:
/* 803D4000  38 80 00 00 */	li r4, 0
lbl_803D4004:
/* 803D4004  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803D4008  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D400C  2C 00 00 01 */	cmpwi r0, 1
/* 803D4010  41 82 00 0C */	beq lbl_803D401C
/* 803D4014  2C 00 00 03 */	cmpwi r0, 3
/* 803D4018  40 82 00 0C */	bne lbl_803D4024
lbl_803D401C:
/* 803D401C  3B DE 00 01 */	addi r30, r30, 1
/* 803D4020  48 00 00 5C */	b lbl_803D407C
lbl_803D4024:
/* 803D4024  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D4028  41 80 00 54 */	blt lbl_803D407C
/* 803D402C  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D4030  41 81 00 4C */	bgt lbl_803D407C
/* 803D4034  38 00 00 04 */	li r0, 4
/* 803D4038  38 E0 00 00 */	li r7, 0
/* 803D403C  7C 09 03 A6 */	mtctr r0
lbl_803D4040:
/* 803D4040  7C 05 3A 14 */	add r0, r5, r7
/* 803D4044  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D4048  7C 03 00 40 */	cmplw r3, r0
/* 803D404C  41 82 00 14 */	beq lbl_803D4060
/* 803D4050  7C 06 3A 14 */	add r0, r6, r7
/* 803D4054  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803D4058  7C 03 00 40 */	cmplw r3, r0
/* 803D405C  40 82 00 0C */	bne lbl_803D4068
lbl_803D4060:
/* 803D4060  7F DD F3 78 */	mr r29, r30
/* 803D4064  48 00 00 0C */	b lbl_803D4070
lbl_803D4068:
/* 803D4068  38 E7 00 01 */	addi r7, r7, 1
/* 803D406C  42 00 FF D4 */	bdnz lbl_803D4040
lbl_803D4070:
/* 803D4070  2C 1D FF FF */	cmpwi r29, -1
/* 803D4074  40 82 00 20 */	bne lbl_803D4094
/* 803D4078  3B DE 00 01 */	addi r30, r30, 1
lbl_803D407C:
/* 803D407C  2C 1E 00 10 */	cmpwi r30, 0x10
/* 803D4080  41 82 00 14 */	beq lbl_803D4094
/* 803D4084  38 84 00 01 */	addi r4, r4, 1
/* 803D4088  3B FF 00 02 */	addi r31, r31, 2
/* 803D408C  2C 04 01 00 */	cmpwi r4, 0x100
/* 803D4090  41 80 FF 74 */	blt lbl_803D4004
lbl_803D4094:
/* 803D4094  7F A3 EB 78 */	mr r3, r29
/* 803D4098  39 61 00 20 */	addi r11, r1, 0x20
/* 803D409C  4B CC 6E 7D */	bl func_8009AF18
/* 803D40A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D40A4  7C 08 03 A6 */	mtlr r0
/* 803D40A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803D40AC  4E 80 00 20 */	blr 
