lbl_80483C30:
/* 80483C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483C34  7C 08 02 A6 */	mflr r0
/* 80483C38  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000D073@ha */
/* 80483C3C  38 A0 00 00 */	li r5, 0
/* 80483C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483C44  38 64 D0 73 */	addi r3, r4, 0xD073 /* 0x0000D073@l */
/* 80483C48  38 84 D0 6E */	addi r4, r4, -12178
/* 80483C4C  4B F4 B0 11 */	bl mNpc_RegistMaskNpc
/* 80483C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483C54  7C 08 03 A6 */	mtlr r0
/* 80483C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80483C5C  4E 80 00 20 */	blr 