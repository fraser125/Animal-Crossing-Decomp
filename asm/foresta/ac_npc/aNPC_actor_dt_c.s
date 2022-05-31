lbl_8053A614:
/* 8053A614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053A618  7C 08 02 A6 */	mflr r0
/* 8053A61C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053A620  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053A624  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053A628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053A62C  3F E3 00 02 */	addis r31, r3, 2
/* 8053A630  80 1F 60 4C */	lwz r0, 0x604c(r31)
/* 8053A634  28 00 00 00 */	cmplwi r0, 0
/* 8053A638  41 82 00 50 */	beq lbl_8053A688
/* 8053A63C  4B FF FB 05 */	bl aNPC_free_actor_class
/* 8053A640  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A644  38 80 00 01 */	li r4, 1
/* 8053A648  38 63 00 64 */	addi r3, r3, 0x64
/* 8053A64C  4B FF FB F5 */	bl aNPC_free_overlay_area
/* 8053A650  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A654  38 80 00 02 */	li r4, 2
/* 8053A658  38 63 00 6C */	addi r3, r3, 0x6c
/* 8053A65C  4B FF FB E5 */	bl aNPC_free_overlay_area
/* 8053A660  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A664  38 80 00 03 */	li r4, 3
/* 8053A668  38 63 00 7C */	addi r3, r3, 0x7c
/* 8053A66C  4B FF FB D5 */	bl aNPC_free_overlay_area
/* 8053A670  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8053A674  38 80 00 02 */	li r4, 2
/* 8053A678  38 63 00 94 */	addi r3, r3, 0x94
/* 8053A67C  4B FF FB C5 */	bl aNPC_free_overlay_area
/* 8053A680  38 00 00 00 */	li r0, 0
/* 8053A684  90 1F 60 4C */	stw r0, 0x604c(r31)
lbl_8053A688:
/* 8053A688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053A68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053A690  7C 08 03 A6 */	mtlr r0
/* 8053A694  38 21 00 10 */	addi r1, r1, 0x10
/* 8053A698  4E 80 00 20 */	blr 
