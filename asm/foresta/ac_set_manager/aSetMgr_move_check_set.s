lbl_80496C28:
/* 80496C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496C2C  7C 08 02 A6 */	mflr r0
/* 80496C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80496C38  3B E0 00 00 */	li r31, 0
/* 80496C3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80496C40  7C 9E 23 78 */	mr r30, r4
/* 80496C44  38 9E 41 80 */	addi r4, r30, 0x4180
/* 80496C48  4B FF FE AD */	bl aSetMgr_renewal_player_pos
/* 80496C4C  4B FF FF 09 */	bl aSetMgr_check_player_wade_start
/* 80496C50  2C 03 00 01 */	cmpwi r3, 1
/* 80496C54  40 82 00 1C */	bne lbl_80496C70
/* 80496C58  38 7E 41 80 */	addi r3, r30, 0x4180
/* 80496C5C  38 9E 41 84 */	addi r4, r30, 0x4184
/* 80496C60  4B FF FD E9 */	bl aSetMgr_renewal_player_next_pos
/* 80496C64  38 00 00 01 */	li r0, 1
/* 80496C68  3B E0 00 01 */	li r31, 1
/* 80496C6C  98 1E 01 75 */	stb r0, 0x175(r30)
lbl_80496C70:
/* 80496C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496C74  7F E3 FB 78 */	mr r3, r31
/* 80496C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80496C7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80496C80  7C 08 03 A6 */	mtlr r0
/* 80496C84  38 21 00 10 */	addi r1, r1, 0x10
/* 80496C88  4E 80 00 20 */	blr 
