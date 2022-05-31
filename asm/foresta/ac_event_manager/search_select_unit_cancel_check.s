lbl_8041AB0C:
/* 8041AB0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8041AB10  7C 08 02 A6 */	mflr r0
/* 8041AB14  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041AB18  39 61 00 30 */	addi r11, r1, 0x30
/* 8041AB1C  4B C8 03 B1 */	bl func_8009AECC
/* 8041AB20  7C FE 3B 78 */	mr r30, r7
/* 8041AB24  7C 9B 23 78 */	mr r27, r4
/* 8041AB28  2C 1E 00 02 */	cmpwi r30, 2
/* 8041AB2C  7C BC 2B 78 */	mr r28, r5
/* 8041AB30  7C DD 33 78 */	mr r29, r6
/* 8041AB34  7D 1F 43 78 */	mr r31, r8
/* 8041AB38  41 80 00 20 */	blt lbl_8041AB58
/* 8041AB3C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8041AB40  80 9C 00 00 */	lwz r4, 0(r28)
/* 8041AB44  4B F8 B4 E1 */	bl mFI_CheckBgDma
/* 8041AB48  2C 03 00 00 */	cmpwi r3, 0
/* 8041AB4C  41 82 00 0C */	beq lbl_8041AB58
/* 8041AB50  38 60 00 01 */	li r3, 1
/* 8041AB54  48 00 00 94 */	b lbl_8041ABE8
lbl_8041AB58:
/* 8041AB58  2C 1E 00 03 */	cmpwi r30, 3
/* 8041AB5C  41 80 00 30 */	blt lbl_8041AB8C
/* 8041AB60  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041AB64  38 81 00 08 */	addi r4, r1, 8
/* 8041AB68  80 1C 00 04 */	lwz r0, 4(r28)
/* 8041AB6C  90 61 00 08 */	stw r3, 8(r1)
/* 8041AB70  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041AB74  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041AB78  4B F8 38 1D */	bl mEv_use_block_by_other_event
/* 8041AB7C  2C 03 00 00 */	cmpwi r3, 0
/* 8041AB80  41 82 00 0C */	beq lbl_8041AB8C
/* 8041AB84  38 60 00 01 */	li r3, 1
/* 8041AB88  48 00 00 60 */	b lbl_8041ABE8
lbl_8041AB8C:
/* 8041AB8C  80 BC 00 04 */	lwz r5, 4(r28)
/* 8041AB90  7F A4 EB 78 */	mr r4, r29
/* 8041AB94  80 DC 00 00 */	lwz r6, 0(r28)
/* 8041AB98  38 7D 00 04 */	addi r3, r29, 4
/* 8041AB9C  4B FB 85 F9 */	bl mNpc_GetMakeUtNuminBlock
/* 8041ABA0  2C 03 00 00 */	cmpwi r3, 0
/* 8041ABA4  40 82 00 0C */	bne lbl_8041ABB0
/* 8041ABA8  38 60 00 01 */	li r3, 1
/* 8041ABAC  48 00 00 3C */	b lbl_8041ABE8
lbl_8041ABB0:
/* 8041ABB0  80 1D 00 04 */	lwz r0, 4(r29)
/* 8041ABB4  7C 00 F8 00 */	cmpw r0, r31
/* 8041ABB8  41 80 00 24 */	blt lbl_8041ABDC
/* 8041ABBC  20 7F 00 10 */	subfic r3, r31, 0x10
/* 8041ABC0  7C 00 18 00 */	cmpw r0, r3
/* 8041ABC4  40 80 00 18 */	bge lbl_8041ABDC
/* 8041ABC8  80 1D 00 00 */	lwz r0, 0(r29)
/* 8041ABCC  7C 00 F8 00 */	cmpw r0, r31
/* 8041ABD0  41 80 00 0C */	blt lbl_8041ABDC
/* 8041ABD4  7C 00 18 00 */	cmpw r0, r3
/* 8041ABD8  41 80 00 0C */	blt lbl_8041ABE4
lbl_8041ABDC:
/* 8041ABDC  38 60 00 01 */	li r3, 1
/* 8041ABE0  48 00 00 08 */	b lbl_8041ABE8
lbl_8041ABE4:
/* 8041ABE4  38 60 00 00 */	li r3, 0
lbl_8041ABE8:
/* 8041ABE8  39 61 00 30 */	addi r11, r1, 0x30
/* 8041ABEC  4B C8 03 2D */	bl func_8009AF18
/* 8041ABF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8041ABF4  7C 08 03 A6 */	mtlr r0
/* 8041ABF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8041ABFC  4E 80 00 20 */	blr 
