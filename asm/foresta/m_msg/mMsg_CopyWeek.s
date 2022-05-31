lbl_803C12A8:
/* 803C12A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C12AC  7C 08 02 A6 */	mflr r0
/* 803C12B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C12B4  39 61 00 30 */	addi r11, r1, 0x30
/* 803C12B8  4B CD 9C 15 */	bl func_8009AECC
/* 803C12BC  7C 7B 1B 78 */	mr r27, r3
/* 803C12C0  7C 9C 23 78 */	mr r28, r4
/* 803C12C4  7C BD 2B 78 */	mr r29, r5
/* 803C12C8  4B FE E5 41 */	bl mFont_CodeSize_idx_get
/* 803C12CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C12D0  7C 7F 1B 78 */	mr r31, r3
/* 803C12D4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C12D8  38 61 00 08 */	addi r3, r1, 8
/* 803C12DC  3C 84 00 02 */	addis r4, r4, 2
/* 803C12E0  88 84 61 24 */	lbz r4, 0x6124(r4)
/* 803C12E4  48 02 DB A5 */	bl mString_Load_WeekStringFromRom
/* 803C12E8  7C 60 1B 78 */	mr r0, r3
/* 803C12EC  7F 63 DB 78 */	mr r3, r27
/* 803C12F0  7C 1E 03 78 */	mr r30, r0
/* 803C12F4  7F A6 EB 78 */	mr r6, r29
/* 803C12F8  7C 9C F2 14 */	add r4, r28, r30
/* 803C12FC  7C BC FA 14 */	add r5, r28, r31
/* 803C1300  38 E0 00 00 */	li r7, 0
/* 803C1304  4B FF FA 71 */	bl mMsg_MoveDataCut
/* 803C1308  7F C5 F3 78 */	mr r5, r30
/* 803C130C  7C 7E 1B 78 */	mr r30, r3
/* 803C1310  7C 7B E2 14 */	add r3, r27, r28
/* 803C1314  38 81 00 08 */	addi r4, r1, 8
/* 803C1318  4B FF FB 25 */	bl mMsg_CopyString
/* 803C131C  7F C3 F3 78 */	mr r3, r30
/* 803C1320  39 61 00 30 */	addi r11, r1, 0x30
/* 803C1324  4B CD 9B F5 */	bl func_8009AF18
/* 803C1328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C132C  7C 08 03 A6 */	mtlr r0
/* 803C1330  38 21 00 30 */	addi r1, r1, 0x30
/* 803C1334  4E 80 00 20 */	blr 
