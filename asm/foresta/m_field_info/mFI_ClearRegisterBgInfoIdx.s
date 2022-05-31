lbl_803A5E14:
/* 803A5E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A5E18  7C 08 02 A6 */	mflr r0
/* 803A5E1C  3C 80 81 16 */	lis r4, data_81167BC0@ha /* 0x81167BC0@ha */
/* 803A5E20  54 63 20 36 */	slwi r3, r3, 4
/* 803A5E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A5E28  38 04 7B C0 */	addi r0, r4, data_81167BC0@l /* 0x81167BC0@l */
/* 803A5E2C  7C 60 1A 14 */	add r3, r0, r3
/* 803A5E30  4B FF FF C9 */	bl mFI_ClearRegisterBgInfo
/* 803A5E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A5E38  7C 08 03 A6 */	mtlr r0
/* 803A5E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A5E40  4E 80 00 20 */	blr 
