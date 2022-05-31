lbl_8051F9C0:
/* 8051F9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051F9C4  7C 08 02 A6 */	mflr r0
/* 8051F9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051F9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051F9D0  7C 9F 23 78 */	mr r31, r4
/* 8051F9D4  38 80 00 09 */	li r4, 9
/* 8051F9D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8051F9DC  7C 7E 1B 78 */	mr r30, r3
/* 8051F9E0  38 60 00 04 */	li r3, 4
/* 8051F9E4  4B E7 8A 99 */	bl mDemo_Get_OrderValue
/* 8051F9E8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8051F9EC  2C 00 00 02 */	cmpwi r0, 2
/* 8051F9F0  41 82 00 5C */	beq lbl_8051FA4C
/* 8051F9F4  40 80 00 98 */	bge lbl_8051FA8C
/* 8051F9F8  2C 00 00 01 */	cmpwi r0, 1
/* 8051F9FC  40 80 00 08 */	bge lbl_8051FA04
/* 8051FA00  48 00 00 8C */	b lbl_8051FA8C
lbl_8051FA04:
/* 8051FA04  7F E3 FB 78 */	mr r3, r31
/* 8051FA08  38 80 2D 28 */	li r4, 0x2d28
/* 8051FA0C  38 A0 00 07 */	li r5, 7
/* 8051FA10  38 C0 00 00 */	li r6, 0
/* 8051FA14  38 E0 00 00 */	li r7, 0
/* 8051FA18  4B EB AA 49 */	bl mPlib_request_main_give_type1
/* 8051FA1C  38 60 00 04 */	li r3, 4
/* 8051FA20  38 80 00 09 */	li r4, 9
/* 8051FA24  38 A0 00 02 */	li r5, 2
/* 8051FA28  4B E7 8A 11 */	bl mDemo_Set_OrderValue
/* 8051FA2C  4B E9 FC 7D */	bl func_803BF6A8
/* 8051FA30  4B EA 13 11 */	bl mMsg_Set_LockContinue
/* 8051FA34  38 60 00 04 */	li r3, 4
/* 8051FA38  38 80 00 01 */	li r4, 1
/* 8051FA3C  38 A0 00 03 */	li r5, 3
/* 8051FA40  4B E7 89 F9 */	bl mDemo_Set_OrderValue
/* 8051FA44  4B FF FC 39 */	bl aEGH_delete_hitodama
/* 8051FA48  48 00 00 44 */	b lbl_8051FA8C
lbl_8051FA4C:
/* 8051FA4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051FA50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051FA54  3C 63 00 02 */	addis r3, r3, 2
/* 8051FA58  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8051FA5C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8051FA60  28 00 00 00 */	cmplwi r0, 0
/* 8051FA64  40 82 00 28 */	bne lbl_8051FA8C
/* 8051FA68  4B E9 FC 41 */	bl func_803BF6A8
/* 8051FA6C  4B EA 12 E1 */	bl mMsg_Unset_LockContinue
/* 8051FA70  38 60 00 04 */	li r3, 4
/* 8051FA74  38 80 00 09 */	li r4, 9
/* 8051FA78  38 A0 00 00 */	li r5, 0
/* 8051FA7C  4B E7 89 BD */	bl mDemo_Set_OrderValue
/* 8051FA80  7F C3 F3 78 */	mr r3, r30
/* 8051FA84  38 80 00 02 */	li r4, 2
/* 8051FA88  48 00 03 69 */	bl aEGH_change_talk_proc
lbl_8051FA8C:
/* 8051FA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051FA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051FA94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051FA98  7C 08 03 A6 */	mtlr r0
/* 8051FA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051FAA0  4E 80 00 20 */	blr 
