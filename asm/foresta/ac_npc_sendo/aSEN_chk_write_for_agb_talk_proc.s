lbl_8057501C:
/* 8057501C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575020  7C 08 02 A6 */	mflr r0
/* 80575024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057502C  93 C1 00 08 */	stw r30, 8(r1)
/* 80575030  7C 7E 1B 78 */	mr r30, r3
/* 80575034  4B E4 A6 75 */	bl func_803BF6A8
/* 80575038  7C 60 1B 78 */	mr r0, r3
/* 8057503C  38 60 00 04 */	li r3, 4
/* 80575040  7C 1F 03 78 */	mr r31, r0
/* 80575044  38 80 00 09 */	li r4, 9
/* 80575048  4B E2 34 35 */	bl mDemo_Get_OrderValue
/* 8057504C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80575050  41 82 00 A4 */	beq lbl_805750F4
/* 80575054  4B E0 E4 ED */	bl func_80383540
/* 80575058  4B E0 EB 15 */	bl mChoice_Get_ChoseNum
/* 8057505C  2C 03 00 01 */	cmpwi r3, 1
/* 80575060  41 82 00 50 */	beq lbl_805750B0
/* 80575064  40 80 00 90 */	bge lbl_805750F4
/* 80575068  2C 03 00 00 */	cmpwi r3, 0
/* 8057506C  40 80 00 08 */	bge lbl_80575074
/* 80575070  48 00 00 84 */	b lbl_805750F4
lbl_80575074:
/* 80575074  38 60 00 04 */	li r3, 4
/* 80575078  38 80 00 09 */	li r4, 9
/* 8057507C  38 A0 00 00 */	li r5, 0
/* 80575080  4B E2 33 B9 */	bl mDemo_Set_OrderValue
/* 80575084  7F E3 FB 78 */	mr r3, r31
/* 80575088  4B E4 BC B9 */	bl mMsg_Set_LockContinue
/* 8057508C  7F E3 FB 78 */	mr r3, r31
/* 80575090  4B E4 BC 99 */	bl mMsg_Set_ForceNext
/* 80575094  4B AD 47 29 */	bl mGcgba_InitVar
/* 80575098  38 00 00 00 */	li r0, 0
/* 8057509C  7F C3 F3 78 */	mr r3, r30
/* 805750A0  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 805750A4  38 80 00 19 */	li r4, 0x19
/* 805750A8  48 00 0E C5 */	bl aSEN_change_talk_proc
/* 805750AC  48 00 00 48 */	b lbl_805750F4
lbl_805750B0:
/* 805750B0  7F C3 F3 78 */	mr r3, r30
/* 805750B4  4B FF FA 5D */	bl aSEN_setup_pl_ride_on
/* 805750B8  38 60 00 04 */	li r3, 4
/* 805750BC  38 80 00 09 */	li r4, 9
/* 805750C0  38 A0 00 00 */	li r5, 0
/* 805750C4  4B E2 33 75 */	bl mDemo_Set_OrderValue
/* 805750C8  7F C3 F3 78 */	mr r3, r30
/* 805750CC  38 80 30 83 */	li r4, 0x3083
/* 805750D0  4B FF F7 C5 */	bl aSEN_get_msg_no
/* 805750D4  7C 64 1B 78 */	mr r4, r3
/* 805750D8  7F E3 FB 78 */	mr r3, r31
/* 805750DC  4B E4 AE E9 */	bl mMsg_Set_continue_msg_num
/* 805750E0  7F E3 FB 78 */	mr r3, r31
/* 805750E4  4B E4 BC 45 */	bl mMsg_Set_ForceNext
/* 805750E8  7F C3 F3 78 */	mr r3, r30
/* 805750EC  38 80 00 00 */	li r4, 0
/* 805750F0  48 00 0E 7D */	bl aSEN_change_talk_proc
lbl_805750F4:
/* 805750F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805750F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805750FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575100  7C 08 03 A6 */	mtlr r0
/* 80575104  38 21 00 10 */	addi r1, r1, 0x10
/* 80575108  4E 80 00 20 */	blr 
