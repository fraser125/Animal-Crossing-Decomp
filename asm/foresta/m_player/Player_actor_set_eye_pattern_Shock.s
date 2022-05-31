lbl_80503BD4:
/* 80503BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503BD8  7C 08 02 A6 */	mflr r0
/* 80503BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503BE4  7C 7F 1B 78 */	mr r31, r3
/* 80503BE8  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 80503BEC  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80503BF0  40 82 00 0C */	bne lbl_80503BFC
/* 80503BF4  4B FD 19 51 */	bl Player_actor_set_tex_anime_pattern
/* 80503BF8  48 00 00 34 */	b lbl_80503C2C
lbl_80503BFC:
/* 80503BFC  2C 00 00 6F */	cmpwi r0, 0x6f
/* 80503C00  40 82 00 1C */	bne lbl_80503C1C
/* 80503C04  38 80 00 06 */	li r4, 6
/* 80503C08  4B FD 18 09 */	bl Player_actor_set_eye_pattern
/* 80503C0C  7F E3 FB 78 */	mr r3, r31
/* 80503C10  38 80 00 05 */	li r4, 5
/* 80503C14  4B FD 19 05 */	bl Player_actor_set_mouth_pattern
/* 80503C18  48 00 00 14 */	b lbl_80503C2C
lbl_80503C1C:
/* 80503C1C  4B FD 17 FD */	bl Player_actor_set_eye_pattern_normal
/* 80503C20  7F E3 FB 78 */	mr r3, r31
/* 80503C24  38 80 00 00 */	li r4, 0
/* 80503C28  4B FD 18 F1 */	bl Player_actor_set_mouth_pattern
lbl_80503C2C:
/* 80503C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503C34  7C 08 03 A6 */	mtlr r0
/* 80503C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80503C3C  4E 80 00 20 */	blr 
