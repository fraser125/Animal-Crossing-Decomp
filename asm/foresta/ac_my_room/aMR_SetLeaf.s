lbl_804734D8:
/* 804734D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804734DC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804734E0  3C 84 00 02 */	addis r4, r4, 2
/* 804734E4  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 804734E8  28 04 00 00 */	cmplwi r4, 0
/* 804734EC  41 82 00 50 */	beq lbl_8047353C
/* 804734F0  80 C4 00 00 */	lwz r6, 0(r4)
/* 804734F4  28 06 00 00 */	cmplwi r6, 0
/* 804734F8  41 82 00 44 */	beq lbl_8047353C
/* 804734FC  80 06 03 58 */	lwz r0, 0x358(r6)
/* 80473500  2C 00 00 00 */	cmpwi r0, 0
/* 80473504  40 82 00 30 */	bne lbl_80473534
/* 80473508  80 A3 00 00 */	lwz r5, 0(r3)
/* 8047350C  38 00 00 01 */	li r0, 1
/* 80473510  80 83 00 04 */	lwz r4, 4(r3)
/* 80473514  90 A6 03 5C */	stw r5, 0x35c(r6)
/* 80473518  90 86 03 60 */	stw r4, 0x360(r6)
/* 8047351C  80 83 00 08 */	lwz r4, 8(r3)
/* 80473520  38 60 00 01 */	li r3, 1
/* 80473524  90 86 03 64 */	stw r4, 0x364(r6)
/* 80473528  D0 26 03 68 */	stfs f1, 0x368(r6)
/* 8047352C  90 06 03 58 */	stw r0, 0x358(r6)
/* 80473530  4E 80 00 20 */	blr 
lbl_80473534:
/* 80473534  38 60 00 00 */	li r3, 0
/* 80473538  4E 80 00 20 */	blr 
lbl_8047353C:
/* 8047353C  38 60 00 00 */	li r3, 0
/* 80473540  4E 80 00 20 */	blr 