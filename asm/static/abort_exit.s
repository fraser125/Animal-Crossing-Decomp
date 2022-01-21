.include "macros.inc"

.section .text

.org 0x8009B604

.global exit
exit:
/* 8009B604 00098564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B608 00098568  7C 08 02 A6 */	mflr r0
/* 8009B60C 0009856C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B610 00098570  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009B614 00098574  80 0D 90 28 */	lwz r0, __aborting-_SDA_BASE_(r13)
/* 8009B618 00098578  2C 00 00 00 */	cmpwi r0, 0
/* 8009B61C 0009857C  40 82 00 4C */	bne lbl_8009B668
/* 8009B620 00098580  4B FF F4 75 */	bl __destroy_global_chain
/* 8009B624 00098584  3C 60 80 0B */	lis r3, __destroy_global_chain_reference@ha
/* 8009B628 00098588  38 03 97 C0 */	addi r0, r3, __destroy_global_chain_reference@l
/* 8009B62C 0009858C  7C 1F 03 78 */	mr r31, r0
/* 8009B630 00098590  48 00 00 10 */	b lbl_8009B640
lbl_8009B634:
/* 8009B634 00098594  7D 89 03 A6 */	mtctr r12
/* 8009B638 00098598  4E 80 04 21 */	bctrl 
/* 8009B63C 0009859C  3B FF 00 04 */	addi r31, r31, 4
lbl_8009B640:
/* 8009B640 000985A0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8009B644 000985A4  28 0C 00 00 */	cmplwi r12, 0
/* 8009B648 000985A8  40 82 FF EC */	bne lbl_8009B634
/* 8009B64C 000985AC  81 8D 90 30 */	lwz r12, __stdio_exit-_SDA_BASE_(r13)
/* 8009B650 000985B0  28 0C 00 00 */	cmplwi r12, 0
/* 8009B654 000985B4  41 82 00 14 */	beq lbl_8009B668
/* 8009B658 000985B8  7D 89 03 A6 */	mtctr r12
/* 8009B65C 000985BC  4E 80 04 21 */	bctrl 
/* 8009B660 000985C0  38 00 00 00 */	li r0, 0
/* 8009B664 000985C4  90 0D 90 30 */	stw r0, __stdio_exit-_SDA_BASE_(r13)
lbl_8009B668:
/* 8009B668 000985C8  3C 60 80 21 */	lis r3, __atexit_funcs@ha
/* 8009B66C 000985CC  3B E3 91 C8 */	addi r31, r3, __atexit_funcs@l
/* 8009B670 000985D0  48 00 00 20 */	b lbl_8009B690
lbl_8009B674:
/* 8009B674 000985D4  80 6D 90 2C */	lwz r3, __atexit_curr_func-_SDA_BASE_(r13)
/* 8009B678 000985D8  38 63 FF FF */	addi r3, r3, -1
/* 8009B67C 000985DC  54 60 10 3A */	slwi r0, r3, 2
/* 8009B680 000985E0  90 6D 90 2C */	stw r3, __atexit_curr_func-_SDA_BASE_(r13)
/* 8009B684 000985E4  7D 9F 00 2E */	lwzx r12, r31, r0
/* 8009B688 000985E8  7D 89 03 A6 */	mtctr r12
/* 8009B68C 000985EC  4E 80 04 21 */	bctrl 
lbl_8009B690:
/* 8009B690 000985F0  80 0D 90 2C */	lwz r0, __atexit_curr_func-_SDA_BASE_(r13)
/* 8009B694 000985F4  2C 00 00 00 */	cmpwi r0, 0
/* 8009B698 000985F8  41 81 FF DC */	bgt lbl_8009B674
/* 8009B69C 000985FC  81 8D 90 34 */	lwz r12, __console_exit-_SDA_BASE_(r13)
/* 8009B6A0 00098600  28 0C 00 00 */	cmplwi r12, 0
/* 8009B6A4 00098604  41 82 00 14 */	beq lbl_8009B6B8
/* 8009B6A8 00098608  7D 89 03 A6 */	mtctr r12
/* 8009B6AC 0009860C  4E 80 04 21 */	bctrl 
/* 8009B6B0 00098610  38 00 00 00 */	li r0, 0
/* 8009B6B4 00098614  90 0D 90 34 */	stw r0, __console_exit-_SDA_BASE_(r13)
lbl_8009B6B8:
/* 8009B6B8 00098618  4B FE 47 B9 */	bl _ExitProcess
/* 8009B6BC 0009861C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B6C0 00098620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009B6C4 00098624  7C 08 03 A6 */	mtlr r0
/* 8009B6C8 00098628  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B6CC 0009862C  4E 80 00 20 */	blr 
