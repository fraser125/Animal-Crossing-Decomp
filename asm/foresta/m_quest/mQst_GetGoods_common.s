lbl_803E442C:
/* 803E442C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E4430  7C 08 02 A6 */	mflr r0
/* 803E4434  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E4438  39 61 00 30 */	addi r11, r1, 0x30
/* 803E443C  4B CB 6A 8D */	bl func_8009AEC8
/* 803E4440  7C BC 2B 79 */	or. r28, r5, r5
/* 803E4444  7C 7A 1B 78 */	mr r26, r3
/* 803E4448  7C 9B 23 78 */	mr r27, r4
/* 803E444C  7C DD 33 78 */	mr r29, r6
/* 803E4450  7C FE 3B 78 */	mr r30, r7
/* 803E4454  7D 1F 43 78 */	mr r31, r8
/* 803E4458  38 00 00 01 */	li r0, 1
/* 803E445C  40 82 00 20 */	bne lbl_803E447C
/* 803E4460  4B C7 88 95 */	bl fqrand
/* 803E4464  3C 60 80 64 */	lis r3, lit_947@ha /* 0x80643124@ha */
/* 803E4468  C0 03 31 24 */	lfs f0, lit_947@l(r3)  /* 0x80643124@l */
/* 803E446C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E4470  FC 00 00 1E */	fctiwz f0, f0
/* 803E4474  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E4478  80 01 00 0C */	lwz r0, 0xc(r1)
lbl_803E447C:
/* 803E447C  2C 00 00 00 */	cmpwi r0, 0
/* 803E4480  41 82 00 2C */	beq lbl_803E44AC
/* 803E4484  7F 44 D3 78 */	mr r4, r26
/* 803E4488  7F A6 EB 78 */	mr r6, r29
/* 803E448C  7F C7 F3 78 */	mr r7, r30
/* 803E4490  7F 88 E3 78 */	mr r8, r28
/* 803E4494  7F E9 FB 78 */	mr r9, r31
/* 803E4498  38 60 00 00 */	li r3, 0
/* 803E449C  38 A0 00 01 */	li r5, 1
/* 803E44A0  39 40 00 00 */	li r10, 0
/* 803E44A4  48 00 3F 39 */	bl mSP_SelectRandomItem_New
/* 803E44A8  48 00 00 40 */	b lbl_803E44E8
lbl_803E44AC:
/* 803E44AC  7F 63 DB 78 */	mr r3, r27
/* 803E44B0  4B FE C1 69 */	bl mNpc_GetNpcFurniture
/* 803E44B4  B0 7A 00 00 */	sth r3, 0(r26)
/* 803E44B8  A0 1A 00 00 */	lhz r0, 0(r26)
/* 803E44BC  28 00 00 00 */	cmplwi r0, 0
/* 803E44C0  40 82 00 28 */	bne lbl_803E44E8
/* 803E44C4  7F 44 D3 78 */	mr r4, r26
/* 803E44C8  7F A6 EB 78 */	mr r6, r29
/* 803E44CC  7F C7 F3 78 */	mr r7, r30
/* 803E44D0  7F 88 E3 78 */	mr r8, r28
/* 803E44D4  7F E9 FB 78 */	mr r9, r31
/* 803E44D8  38 60 00 00 */	li r3, 0
/* 803E44DC  38 A0 00 01 */	li r5, 1
/* 803E44E0  39 40 00 00 */	li r10, 0
/* 803E44E4  48 00 3E F9 */	bl mSP_SelectRandomItem_New
lbl_803E44E8:
/* 803E44E8  39 61 00 30 */	addi r11, r1, 0x30
/* 803E44EC  4B CB 6A 29 */	bl func_8009AF14
/* 803E44F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E44F4  7C 08 03 A6 */	mtlr r0
/* 803E44F8  38 21 00 30 */	addi r1, r1, 0x30
/* 803E44FC  4E 80 00 20 */	blr 
