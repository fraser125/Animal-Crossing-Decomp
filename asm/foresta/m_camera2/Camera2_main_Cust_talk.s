lbl_803822FC:
/* 803822FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80382300  7C 08 02 A6 */	mflr r0
/* 80382304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80382308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038230C  7C 7F 1B 78 */	mr r31, r3
/* 80382310  4B FF FE D9 */	bl Camera2_SetPos_Cust_Talk
/* 80382314  7F E3 FB 78 */	mr r3, r31
/* 80382318  4B FF D1 8D */	bl Camera2_sound_Set_Ground
/* 8038231C  7F E3 FB 78 */	mr r3, r31
/* 80382320  4B FF CE E1 */	bl Camera2_SetMicPos
/* 80382324  7F E3 FB 78 */	mr r3, r31
/* 80382328  4B FF FF A9 */	bl Camera2_Cust_Talk_AddCullTimer
/* 8038232C  7F E3 FB 78 */	mr r3, r31
/* 80382330  4B FF DC 49 */	bl Camera2_Talk_SetTalking_Cull
/* 80382334  7F E3 FB 78 */	mr r3, r31
/* 80382338  48 00 0F 61 */	bl Camera2_change_main_index
/* 8038233C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80382340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80382344  7C 08 03 A6 */	mtlr r0
/* 80382348  38 21 00 10 */	addi r1, r1, 0x10
/* 8038234C  4E 80 00 20 */	blr 
