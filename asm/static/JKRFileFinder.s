.include "macros.inc"

.section .text

.org 0x800685B0

.global __ct__12JKRArcFinderFP10JKRArchivell
__ct__12JKRArcFinderFP10JKRArchivell:
/* 800685B0 00065510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800685B4 00065514  7C 08 02 A6 */	mflr r0
/* 800685B8 00065518  3D 20 80 0E */	lis r9, __vt__13JKRFileFinder@ha
/* 800685BC 0006551C  3D 00 80 0E */	lis r8, __vt__12JKRArcFinder@ha
/* 800685C0 00065520  90 01 00 14 */	stw r0, 0x14(r1)
/* 800685C4 00065524  38 06 FF FF */	addi r0, r6, -1
/* 800685C8 00065528  7C E6 00 D0 */	neg r7, r6
/* 800685CC 0006552C  39 29 99 8C */	addi r9, r9, __vt__13JKRFileFinder@l
/* 800685D0 00065530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800685D4 00065534  7C E6 30 78 */	andc r6, r7, r6
/* 800685D8 00065538  38 E8 E6 9C */	addi r7, r8, __vt__12JKRArcFinder@l
/* 800685DC 0006553C  7C 05 02 14 */	add r0, r5, r0
/* 800685E0 00065540  91 23 00 0C */	stw r9, 0xc(r3)
/* 800685E4 00065544  39 20 00 00 */	li r9, 0
/* 800685E8 00065548  54 C6 0F FE */	srwi r6, r6, 0x1f
/* 800685EC 0006554C  7C 7F 1B 78 */	mr r31, r3
/* 800685F0 00065550  99 23 00 10 */	stb r9, 0x10(r3)
/* 800685F4 00065554  99 23 00 11 */	stb r9, 0x11(r3)
/* 800685F8 00065558  90 E3 00 0C */	stw r7, 0xc(r3)
/* 800685FC 0006555C  90 83 00 14 */	stw r4, 0x14(r3)
/* 80068600 00065560  98 C3 00 10 */	stb r6, 0x10(r3)
/* 80068604 00065564  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80068608 00065568  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8006860C 0006556C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80068610 00065570  90 03 00 20 */	stw r0, 0x20(r3)
/* 80068614 00065574  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80068618 00065578  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8006861C 0006557C  7D 89 03 A6 */	mtctr r12
/* 80068620 00065580  4E 80 04 21 */	bctrl 
/* 80068624 00065584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068628 00065588  7F E3 FB 78 */	mr r3, r31
/* 8006862C 0006558C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80068630 00065590  7C 08 03 A6 */	mtlr r0
/* 80068634 00065594  38 21 00 10 */	addi r1, r1, 0x10
/* 80068638 00065598  4E 80 00 20 */	blr 

.global findNextFile__12JKRArcFinderFv
findNextFile__12JKRArcFinderFv:
/* 8006863C 0006559C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80068640 000655A0  7C 08 02 A6 */	mflr r0
/* 80068644 000655A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80068648 000655A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8006864C 000655AC  7C 7F 1B 78 */	mr r31, r3
/* 80068650 000655B0  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80068654 000655B4  28 00 00 00 */	cmplwi r0, 0
/* 80068658 000655B8  41 82 00 78 */	beq lbl_800686D0
/* 8006865C 000655BC  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80068660 000655C0  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80068664 000655C4  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 80068668 000655C8  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8006866C 000655CC  7C 05 00 10 */	subfc r0, r5, r0
/* 80068670 000655D0  7C 04 19 14 */	adde r0, r4, r3
/* 80068674 000655D4  98 1F 00 10 */	stb r0, 0x10(r31)
/* 80068678 000655D8  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8006867C 000655DC  28 00 00 00 */	cmplwi r0, 0
/* 80068680 000655E0  41 82 00 50 */	beq lbl_800686D0
/* 80068684 000655E4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80068688 000655E8  38 81 00 08 */	addi r4, r1, 8
/* 8006868C 000655EC  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 80068690 000655F0  48 00 03 1D */	bl getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl
/* 80068694 000655F4  98 7F 00 10 */	stb r3, 0x10(r31)
/* 80068698 000655F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006869C 000655FC  90 1F 00 00 */	stw r0, 0(r31)
/* 800686A0 00065600  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 800686A4 00065604  90 1F 00 04 */	stw r0, 4(r31)
/* 800686A8 00065608  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 800686AC 0006560C  B0 1F 00 08 */	sth r0, 8(r31)
/* 800686B0 00065610  88 01 00 08 */	lbz r0, 8(r1)
/* 800686B4 00065614  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 800686B8 00065618  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 800686BC 0006561C  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 800686C0 00065620  98 1F 00 11 */	stb r0, 0x11(r31)
/* 800686C4 00065624  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 800686C8 00065628  38 03 00 01 */	addi r0, r3, 1
/* 800686CC 0006562C  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_800686D0:
/* 800686D0 00065630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800686D4 00065634  88 7F 00 10 */	lbz r3, 0x10(r31)
/* 800686D8 00065638  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800686DC 0006563C  7C 08 03 A6 */	mtlr r0
/* 800686E0 00065640  38 21 00 20 */	addi r1, r1, 0x20
/* 800686E4 00065644  4E 80 00 20 */	blr 

.global __dt__12JKRArcFinderFv
__dt__12JKRArcFinderFv:
/* 800686E8 00065648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800686EC 0006564C  7C 08 02 A6 */	mflr r0
/* 800686F0 00065650  90 01 00 14 */	stw r0, 0x14(r1)
/* 800686F4 00065654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800686F8 00065658  7C 7F 1B 79 */	or. r31, r3, r3
/* 800686FC 0006565C  41 82 00 30 */	beq lbl_8006872C
/* 80068700 00065660  3C 60 80 0E */	lis r3, __vt__12JKRArcFinder@ha
/* 80068704 00065664  38 03 E6 9C */	addi r0, r3, __vt__12JKRArcFinder@l
/* 80068708 00065668  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8006870C 0006566C  41 82 00 10 */	beq lbl_8006871C
/* 80068710 00065670  3C 60 80 0E */	lis r3, __vt__13JKRFileFinder@ha
/* 80068714 00065674  38 03 99 8C */	addi r0, r3, __vt__13JKRFileFinder@l
/* 80068718 00065678  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_8006871C:
/* 8006871C 0006567C  7C 80 07 35 */	extsh. r0, r4
/* 80068720 00065680  40 81 00 0C */	ble lbl_8006872C
/* 80068724 00065684  7F E3 FB 78 */	mr r3, r31
/* 80068728 00065688  4B FF B8 89 */	bl __dl__FPv
lbl_8006872C:
/* 8006872C 0006568C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80068730 00065690  7F E3 FB 78 */	mr r3, r31
/* 80068734 00065694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80068738 00065698  7C 08 03 A6 */	mtlr r0
/* 8006873C 0006569C  38 21 00 10 */	addi r1, r1, 0x10
/* 80068740 000656A0  4E 80 00 20 */	blr 
