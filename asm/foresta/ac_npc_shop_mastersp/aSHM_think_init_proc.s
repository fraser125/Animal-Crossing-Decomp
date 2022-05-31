lbl_8057DFDC:
/* 8057DFDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057DFE0  7C 08 02 A6 */	mflr r0
/* 8057DFE4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8057DFE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057DFEC  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8057DFF0  3C C6 00 02 */	addis r6, r6, 2
/* 8057DFF4  38 A0 00 FE */	li r5, 0xfe
/* 8057DFF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057DFFC  38 00 00 00 */	li r0, 0
/* 8057E000  7C 7F 1B 78 */	mr r31, r3
/* 8057E004  80 E6 61 20 */	lwz r7, 0x6120(r6)
/* 8057E008  80 C6 61 24 */	lwz r6, 0x6124(r6)
/* 8057E00C  90 E1 00 08 */	stw r7, 8(r1)
/* 8057E010  98 A3 00 D6 */	stb r5, 0xd6(r3)
/* 8057E014  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8057E018  98 03 08 31 */	stb r0, 0x831(r3)
/* 8057E01C  4B FF F8 25 */	bl func_8057D840
/* 8057E020  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8057E024  90 1F 09 B8 */	stw r0, 0x9b8(r31)
/* 8057E028  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E02C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057E030  7C 08 03 A6 */	mtlr r0
/* 8057E034  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E038  4E 80 00 20 */	blr 
