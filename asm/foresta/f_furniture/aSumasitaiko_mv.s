lbl_80635758:
/* 80635758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063575C  7C 08 02 A6 */	mflr r0
/* 80635760  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80635764  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80635768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063576C  3C A5 00 02 */	addis r5, r5, 2
/* 80635770  80 A5 60 8C */	lwz r5, 0x608c(r5)
/* 80635774  28 05 00 00 */	cmplwi r5, 0
/* 80635778  41 82 00 14 */	beq lbl_8063578C
/* 8063577C  81 85 00 64 */	lwz r12, 0x64(r5)
/* 80635780  38 A0 00 0C */	li r5, 0xc
/* 80635784  7D 89 03 A6 */	mtctr r12
/* 80635788  4E 80 04 21 */	bctrl 
lbl_8063578C:
/* 8063578C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635790  7C 08 03 A6 */	mtlr r0
/* 80635794  38 21 00 10 */	addi r1, r1, 0x10
/* 80635798  4E 80 00 20 */	blr 
