lbl_8057C45C:
/* 8057C45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C460  7C 08 02 A6 */	mflr r0
/* 8057C464  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C468  4B E4 32 41 */	bl func_803BF6A8
/* 8057C46C  4B E4 48 ED */	bl mMsg_Set_idling_req
/* 8057C470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C474  7C 08 03 A6 */	mtlr r0
/* 8057C478  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C47C  4E 80 00 20 */	blr 
