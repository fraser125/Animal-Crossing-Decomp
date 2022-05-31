lbl_80566D1C:
/* 80566D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566D20  7C 08 02 A6 */	mflr r0
/* 80566D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566D28  4B E4 58 CD */	bl mFRm_CheckSaveData
/* 80566D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80566D30  38 60 09 CA */	li r3, 0x9ca
/* 80566D34  40 82 00 08 */	bne lbl_80566D3C
/* 80566D38  38 60 09 C7 */	li r3, 0x9c7
lbl_80566D3C:
/* 80566D3C  4B E3 17 D9 */	bl mDemo_Set_msg_num
/* 80566D40  38 60 00 01 */	li r3, 1
/* 80566D44  4B E3 1B DD */	bl mDemo_Set_camera
/* 80566D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566D4C  7C 08 03 A6 */	mtlr r0
/* 80566D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80566D54  4E 80 00 20 */	blr 
