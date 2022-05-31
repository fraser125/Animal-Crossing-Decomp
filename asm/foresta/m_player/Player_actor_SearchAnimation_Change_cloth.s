lbl_80504714:
/* 80504714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504718  7C 08 02 A6 */	mflr r0
/* 8050471C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80504724  7C 9F 23 78 */	mr r31, r4
/* 80504728  93 C1 00 08 */	stw r30, 8(r1)
/* 8050472C  7C 7E 1B 78 */	mr r30, r3
/* 80504730  4B FD 2D AD */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 80504734  2C 03 00 00 */	cmpwi r3, 0
/* 80504738  40 82 00 1C */	bne lbl_80504754
/* 8050473C  7F C3 F3 78 */	mr r3, r30
/* 80504740  7F E4 FB 78 */	mr r4, r31
/* 80504744  4B FF FE 6D */	bl Player_actor_SetEffect_Change_cloth
/* 80504748  7F C3 F3 78 */	mr r3, r30
/* 8050474C  7F E4 FB 78 */	mr r4, r31
/* 80504750  4B FF FF 19 */	bl Player_actor_SetTexPallet_Change_cloth
lbl_80504754:
/* 80504754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050475C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80504760  7C 08 03 A6 */	mtlr r0
/* 80504764  38 21 00 10 */	addi r1, r1, 0x10
/* 80504768  4E 80 00 20 */	blr 
