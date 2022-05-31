lbl_803D43D4:
/* 803D43D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D43D8  7C 08 02 A6 */	mflr r0
/* 803D43DC  3C 60 81 17 */	lis r3, l_island_npc_room_data@ha /* 0x8116C6AC@ha */
/* 803D43E0  38 80 24 D8 */	li r4, 0x24d8
/* 803D43E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D43E8  38 63 C6 AC */	addi r3, r3, l_island_npc_room_data@l /* 0x8116C6AC@l */
/* 803D43EC  4B C8 8C 7D */	bl bzero
/* 803D43F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D43F4  7C 08 03 A6 */	mtlr r0
/* 803D43F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D43FC  4E 80 00 20 */	blr 
