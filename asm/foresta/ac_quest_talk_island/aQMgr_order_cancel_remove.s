lbl_8048E9CC:
/* 8048E9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E9D0  7C 08 02 A6 */	mflr r0
/* 8048E9D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048E9D8  38 A0 00 FF */	li r5, 0xff
/* 8048E9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E9E0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8048E9E4  38 64 00 19 */	addi r3, r4, 0x19
/* 8048E9E8  38 00 00 FF */	li r0, 0xff
/* 8048E9EC  3C 84 00 01 */	addis r4, r4, 1
/* 8048E9F0  98 03 00 00 */	stb r0, 0(r3)
/* 8048E9F4  38 84 74 38 */	addi r4, r4, 0x7438
/* 8048E9F8  4B F4 1F 6D */	bl mNpc_SetRemoveAnimalNo
/* 8048E9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EA00  7C 08 03 A6 */	mtlr r0
/* 8048EA04  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EA08  4E 80 00 20 */	blr 
