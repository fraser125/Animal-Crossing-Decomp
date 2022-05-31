lbl_803A5E44:
/* 803A5E44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A5E48  7C 08 02 A6 */	mflr r0
/* 803A5E4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A5E50  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5E54  4B CF 50 81 */	bl func_8009AED4
/* 803A5E58  3C 60 81 16 */	lis r3, data_81167BC0@ha /* 0x81167BC0@ha */
/* 803A5E5C  3B A0 00 00 */	li r29, 0
/* 803A5E60  3B C3 7B C0 */	addi r30, r3, data_81167BC0@l /* 0x81167BC0@l */
/* 803A5E64  3B E0 00 00 */	li r31, 0
lbl_803A5E68:
/* 803A5E68  7C 7E FA 14 */	add r3, r30, r31
/* 803A5E6C  4B FF FF 8D */	bl mFI_ClearRegisterBgInfo
/* 803A5E70  3B BD 00 01 */	addi r29, r29, 1
/* 803A5E74  3B FF 00 10 */	addi r31, r31, 0x10
/* 803A5E78  2C 1D 00 04 */	cmpwi r29, 4
/* 803A5E7C  41 80 FF EC */	blt lbl_803A5E68
/* 803A5E80  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5E84  4B CF 50 9D */	bl func_8009AF20
/* 803A5E88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A5E8C  7C 08 03 A6 */	mtlr r0
/* 803A5E90  38 21 00 20 */	addi r1, r1, 0x20
/* 803A5E94  4E 80 00 20 */	blr 
