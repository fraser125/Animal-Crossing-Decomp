lbl_803C31E0:
/* 803C31E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C31E4  7C 08 02 A6 */	mflr r0
/* 803C31E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C31EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803C31F0  4B CD 7C E5 */	bl func_8009AED4
/* 803C31F4  7C 9E 23 78 */	mr r30, r4
/* 803C31F8  7C BF 2B 78 */	mr r31, r5
/* 803C31FC  80 84 00 00 */	lwz r4, 0(r4)
/* 803C3200  7C 7D 1B 78 */	mr r29, r3
/* 803C3204  38 A1 00 0C */	addi r5, r1, 0xc
/* 803C3208  38 C1 00 08 */	addi r6, r1, 8
/* 803C320C  4B FF D1 69 */	bl mMsg_Get_OrderCode
/* 803C3210  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803C3214  7F E3 FB 78 */	mr r3, r31
/* 803C3218  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803C321C  4B FD 52 1D */	bl mDemo_Set_OrderValue
/* 803C3220  80 9E 00 00 */	lwz r4, 0(r30)
/* 803C3224  7F A3 EB 78 */	mr r3, r29
/* 803C3228  4B FF CE 21 */	bl func_803C0048
/* 803C322C  80 1E 00 00 */	lwz r0, 0(r30)
/* 803C3230  7C 00 1A 14 */	add r0, r0, r3
/* 803C3234  38 60 00 00 */	li r3, 0
/* 803C3238  90 1E 00 00 */	stw r0, 0(r30)
/* 803C323C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C3240  4B CD 7C E1 */	bl func_8009AF20
/* 803C3244  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C3248  7C 08 03 A6 */	mtlr r0
/* 803C324C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C3250  4E 80 00 20 */	blr 
