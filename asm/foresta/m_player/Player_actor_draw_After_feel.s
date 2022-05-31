lbl_804E4168:
/* 804E4168  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E416C  7C 08 02 A6 */	mflr r0
/* 804E4170  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E4174  39 61 00 30 */	addi r11, r1, 0x30
/* 804E4178  4B BB 6D 5D */	bl func_8009AED4
/* 804E417C  7C 7D 1B 78 */	mr r29, r3
/* 804E4180  7C 9E 23 78 */	mr r30, r4
/* 804E4184  3B FD 10 38 */	addi r31, r29, 0x1038
/* 804E4188  7F E3 FB 78 */	mr r3, r31
/* 804E418C  4B F2 93 31 */	bl Matrix_Position_Zero
/* 804E4190  81 1D 11 0C */	lwz r8, 0x110c(r29)
/* 804E4194  2C 08 00 00 */	cmpwi r8, 0
/* 804E4198  40 81 00 64 */	ble lbl_804E41FC
/* 804E419C  80 9F 00 00 */	lwz r4, 0(r31)
/* 804E41A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E41A4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804E41A8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E41AC  3C 63 00 02 */	addis r3, r3, 2
/* 804E41B0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E41B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E41B8  7F C7 F3 78 */	mr r7, r30
/* 804E41BC  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E41C0  38 68 FF FF */	addi r3, r8, -1
/* 804E41C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E41C8  38 81 00 14 */	addi r4, r1, 0x14
/* 804E41CC  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E41D0  38 A0 00 02 */	li r5, 2
/* 804E41D4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804E41D8  39 20 00 00 */	li r9, 0
/* 804E41DC  39 40 00 00 */	li r10, 0
/* 804E41E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E41E4  81 86 00 00 */	lwz r12, 0(r6)
/* 804E41E8  A8 DD 00 DE */	lha r6, 0xde(r29)
/* 804E41EC  7D 89 03 A6 */	mtctr r12
/* 804E41F0  4E 80 04 21 */	bctrl 
/* 804E41F4  38 00 00 00 */	li r0, 0
/* 804E41F8  90 1D 11 0C */	stw r0, 0x110c(r29)
lbl_804E41FC:
/* 804E41FC  7F C3 F3 78 */	mr r3, r30
/* 804E4200  4B EF 54 71 */	bl mPlib_get_player_actor_main_index
/* 804E4204  2C 03 00 54 */	cmpwi r3, 0x54
/* 804E4208  40 82 00 70 */	bne lbl_804E4278
/* 804E420C  80 1D 0D 3C */	lwz r0, 0xd3c(r29)
/* 804E4210  2C 00 00 00 */	cmpwi r0, 0
/* 804E4214  41 82 00 64 */	beq lbl_804E4278
/* 804E4218  80 9F 00 00 */	lwz r4, 0(r31)
/* 804E421C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E4220  80 1F 00 04 */	lwz r0, 4(r31)
/* 804E4224  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E4228  3C 63 00 02 */	addis r3, r3, 2
/* 804E422C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804E4230  90 81 00 08 */	stw r4, 8(r1)
/* 804E4234  7F C7 F3 78 */	mr r7, r30
/* 804E4238  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 804E423C  38 81 00 08 */	addi r4, r1, 8
/* 804E4240  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E4244  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804E4248  38 60 00 1E */	li r3, 0x1e
/* 804E424C  38 A0 00 02 */	li r5, 2
/* 804E4250  80 1F 00 08 */	lwz r0, 8(r31)
/* 804E4254  38 C0 00 00 */	li r6, 0
/* 804E4258  39 20 00 00 */	li r9, 0
/* 804E425C  39 40 00 00 */	li r10, 0
/* 804E4260  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E4264  81 8B 00 00 */	lwz r12, 0(r11)
/* 804E4268  7D 89 03 A6 */	mtctr r12
/* 804E426C  4E 80 04 21 */	bctrl 
/* 804E4270  38 00 00 00 */	li r0, 0
/* 804E4274  90 1D 0D 3C */	stw r0, 0xd3c(r29)
lbl_804E4278:
/* 804E4278  39 61 00 30 */	addi r11, r1, 0x30
/* 804E427C  4B BB 6C A5 */	bl func_8009AF20
/* 804E4280  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E4284  7C 08 03 A6 */	mtlr r0
/* 804E4288  38 21 00 30 */	addi r1, r1, 0x30
/* 804E428C  4E 80 00 20 */	blr 
