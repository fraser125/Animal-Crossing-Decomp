lbl_8039A7F8:
/* 8039A7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A7FC  7C 08 02 A6 */	mflr r0
/* 8039A800  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A804  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A808  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A80C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039A810  3F E3 00 03 */	addis r31, r3, 3
/* 8039A814  80 7F DB E4 */	lwz r3, -0x241c(r31)
/* 8039A818  28 03 00 00 */	cmplwi r3, 0
/* 8039A81C  41 82 00 20 */	beq lbl_8039A83C
/* 8039A820  48 02 1C 95 */	bl zelda_free
/* 8039A824  38 00 00 00 */	li r0, 0
/* 8039A828  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039A82C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039A830  90 1F DB E4 */	stw r0, -0x241c(r31)
/* 8039A834  3C 63 00 03 */	addis r3, r3, 3
/* 8039A838  90 03 DB E8 */	stw r0, -0x2418(r3)
lbl_8039A83C:
/* 8039A83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039A844  7C 08 03 A6 */	mtlr r0
/* 8039A848  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A84C  4E 80 00 20 */	blr 
