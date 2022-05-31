lbl_803AB868:
/* 803AB868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AB86C  7C 08 02 A6 */	mflr r0
/* 803AB870  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AB874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AB878  7C 7F 1B 78 */	mr r31, r3
/* 803AB87C  4B FF FD 5D */	bl mFR_delete_after_record
/* 803AB880  7F E3 FB 78 */	mr r3, r31
/* 803AB884  4B FF FD DD */	bl mFR_delete_npc_record
/* 803AB888  4B FF FF 11 */	bl mFR_get_free_record
/* 803AB88C  28 03 00 00 */	cmplwi r3, 0
/* 803AB890  41 82 00 08 */	beq lbl_803AB898
/* 803AB894  48 00 00 08 */	b lbl_803AB89C
lbl_803AB898:
/* 803AB898  4B FF FF 3D */	bl mFR_recycle_record
lbl_803AB89C:
/* 803AB89C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AB8A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AB8A4  7C 08 03 A6 */	mtlr r0
/* 803AB8A8  38 21 00 10 */	addi r1, r1, 0x10
/* 803AB8AC  4E 80 00 20 */	blr 
