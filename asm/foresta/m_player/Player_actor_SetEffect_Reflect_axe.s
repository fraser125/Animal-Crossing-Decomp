lbl_804F0CD4:
/* 804F0CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0CD8  7C 08 02 A6 */	mflr r0
/* 804F0CDC  7C A6 2B 78 */	mr r6, r5
/* 804F0CE0  38 A0 00 02 */	li r5, 2
/* 804F0CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F0CEC  7C 9F 23 78 */	mr r31, r4
/* 804F0CF0  93 C1 00 08 */	stw r30, 8(r1)
/* 804F0CF4  7C 7E 1B 78 */	mr r30, r3
/* 804F0CF8  4B FF FF BD */	bl Player_actor_SetEffectHit_Reflect_axe
/* 804F0CFC  7F C3 F3 78 */	mr r3, r30
/* 804F0D00  7F E4 FB 78 */	mr r4, r31
/* 804F0D04  4B FE 8A 6D */	bl Player_actor_SetEffectStart_axe_common
/* 804F0D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F0D10  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F0D14  7C 08 03 A6 */	mtlr r0
/* 804F0D18  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0D1C  4E 80 00 20 */	blr 
