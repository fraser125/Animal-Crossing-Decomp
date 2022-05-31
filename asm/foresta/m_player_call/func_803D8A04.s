lbl_803D8A04:
/* 803D8A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8A08  7C 08 02 A6 */	mflr r0
/* 803D8A0C  3C 80 80 4D */	lis r4, Player_actor_ct@ha /* 0x804D3ED0@ha */
/* 803D8A10  3C A0 81 17 */	lis r5, data_8116EDD0@ha /* 0x8116EDD0@ha */
/* 803D8A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D8A1C  3B E5 ED D0 */	addi r31, r5, data_8116EDD0@l /* 0x8116EDD0@l */
/* 803D8A20  38 A0 00 01 */	li r5, 1
/* 803D8A24  93 C1 00 08 */	stw r30, 8(r1)
/* 803D8A28  3B C3 1D EC */	addi r30, r3, 0x1dec
/* 803D8A2C  38 64 3E D0 */	addi r3, r4, Player_actor_ct@l /* 0x804D3ED0@l */
/* 803D8A30  7F C4 F3 78 */	mr r4, r30
/* 803D8A34  48 01 6A FD */	bl mSM_ovlptr_dllcnv
/* 803D8A38  3C 80 80 4D */	lis r4, Player_actor_dt@ha /* 0x804D3FC4@ha */
/* 803D8A3C  90 7F 00 00 */	stw r3, 0(r31)
/* 803D8A40  38 64 3F C4 */	addi r3, r4, Player_actor_dt@l /* 0x804D3FC4@l */
/* 803D8A44  38 A0 00 01 */	li r5, 1
/* 803D8A48  7F C4 F3 78 */	mr r4, r30
/* 803D8A4C  48 01 6A E5 */	bl mSM_ovlptr_dllcnv
/* 803D8A50  3C 80 80 4D */	lis r4, Player_actor_move@ha /* 0x804D43A8@ha */
/* 803D8A54  90 7F 00 04 */	stw r3, 4(r31)
/* 803D8A58  38 64 43 A8 */	addi r3, r4, Player_actor_move@l /* 0x804D43A8@l */
/* 803D8A5C  38 A0 00 01 */	li r5, 1
/* 803D8A60  7F C4 F3 78 */	mr r4, r30
/* 803D8A64  48 01 6A CD */	bl mSM_ovlptr_dllcnv
/* 803D8A68  3C 80 80 4D */	lis r4, Player_actor_draw@ha /* 0x804D443C@ha */
/* 803D8A6C  90 7F 00 08 */	stw r3, 8(r31)
/* 803D8A70  38 64 44 3C */	addi r3, r4, Player_actor_draw@l /* 0x804D443C@l */
/* 803D8A74  38 A0 00 01 */	li r5, 1
/* 803D8A78  7F C4 F3 78 */	mr r4, r30
/* 803D8A7C  48 01 6A B5 */	bl mSM_ovlptr_dllcnv
/* 803D8A80  90 7F 00 0C */	stw r3, 0xc(r31)
/* 803D8A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8A88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D8A8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D8A90  7C 08 03 A6 */	mtlr r0
/* 803D8A94  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8A98  4E 80 00 20 */	blr 
