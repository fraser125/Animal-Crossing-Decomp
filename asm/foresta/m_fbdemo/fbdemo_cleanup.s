lbl_803A0604:
/* 803A0604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A0608  7C 08 02 A6 */	mflr r0
/* 803A060C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A0610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A0614  7C 7F 1B 78 */	mr r31, r3
/* 803A0618  38 60 00 64 */	li r3, 0x64
/* 803A061C  4B CB C7 BD */	bl msleep
/* 803A0620  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803A0624  28 03 00 00 */	cmplwi r3, 0
/* 803A0628  41 82 00 10 */	beq lbl_803A0638
/* 803A062C  4B CB C9 09 */	bl free
/* 803A0630  38 00 00 00 */	li r0, 0
/* 803A0634  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_803A0638:
/* 803A0638  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803A063C  28 03 00 00 */	cmplwi r3, 0
/* 803A0640  41 82 00 10 */	beq lbl_803A0650
/* 803A0644  4B CB C8 F1 */	bl free
/* 803A0648  38 00 00 00 */	li r0, 0
/* 803A064C  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_803A0650:
/* 803A0650  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803A0654  28 03 00 00 */	cmplwi r3, 0
/* 803A0658  41 82 00 10 */	beq lbl_803A0668
/* 803A065C  4B CB C8 D9 */	bl free
/* 803A0660  38 00 00 00 */	li r0, 0
/* 803A0664  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_803A0668:
/* 803A0668  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 803A066C  28 03 00 00 */	cmplwi r3, 0
/* 803A0670  41 82 00 10 */	beq lbl_803A0680
/* 803A0674  4B CB C8 C1 */	bl free
/* 803A0678  38 00 00 00 */	li r0, 0
/* 803A067C  90 1F 00 D8 */	stw r0, 0xd8(r31)
lbl_803A0680:
/* 803A0680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A0684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A0688  7C 08 03 A6 */	mtlr r0
/* 803A068C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A0690  4E 80 00 20 */	blr 