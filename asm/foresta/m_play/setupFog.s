lbl_8062AB40:
/* 8062AB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062AB44  7C 08 02 A6 */	mflr r0
/* 8062AB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062AB4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062AB50  7C 9F 23 78 */	mr r31, r4
/* 8062AB54  93 C1 00 08 */	stw r30, 8(r1)
/* 8062AB58  7C 7E 1B 78 */	mr r30, r3
/* 8062AB5C  80 84 02 D0 */	lwz r4, 0x2d0(r4)
/* 8062AB60  4B FF F8 5D */	bl game_play_set_fog
/* 8062AB64  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8062AB68  7F C3 F3 78 */	mr r3, r30
/* 8062AB6C  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 8062AB70  4B FF F8 4D */	bl game_play_set_fog
/* 8062AB74  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8062AB78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062AB7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062AB80  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062AB84  7C 08 03 A6 */	mtlr r0
/* 8062AB88  38 21 00 10 */	addi r1, r1, 0x10
/* 8062AB8C  4E 80 00 20 */	blr 
