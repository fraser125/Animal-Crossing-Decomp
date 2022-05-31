lbl_804AEF04:
/* 804AEF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AEF08  7C 08 02 A6 */	mflr r0
/* 804AEF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AEF10  80 A3 02 18 */	lwz r5, 0x218(r3)
/* 804AEF14  80 03 02 1C */	lwz r0, 0x21c(r3)
/* 804AEF18  90 A3 00 28 */	stw r5, 0x28(r3)
/* 804AEF1C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 804AEF20  80 03 02 20 */	lwz r0, 0x220(r3)
/* 804AEF24  90 03 00 30 */	stw r0, 0x30(r3)
/* 804AEF28  80 A3 02 54 */	lwz r5, 0x254(r3)
/* 804AEF2C  80 03 02 58 */	lwz r0, 0x258(r3)
/* 804AEF30  90 A3 02 68 */	stw r5, 0x268(r3)
/* 804AEF34  90 03 02 6C */	stw r0, 0x26c(r3)
/* 804AEF38  80 03 02 5C */	lwz r0, 0x25c(r3)
/* 804AEF3C  90 03 02 70 */	stw r0, 0x270(r3)
/* 804AEF40  80 03 02 34 */	lwz r0, 0x234(r3)
/* 804AEF44  2C 00 00 01 */	cmpwi r0, 1
/* 804AEF48  40 82 00 1C */	bne lbl_804AEF64
/* 804AEF4C  38 00 00 00 */	li r0, 0
/* 804AEF50  38 A0 00 00 */	li r5, 0
/* 804AEF54  90 03 02 88 */	stw r0, 0x288(r3)
/* 804AEF58  38 C0 00 00 */	li r6, 0
/* 804AEF5C  90 03 02 8C */	stw r0, 0x28c(r3)
/* 804AEF60  48 00 04 1D */	bl aUKI_set_proc
lbl_804AEF64:
/* 804AEF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AEF68  7C 08 03 A6 */	mtlr r0
/* 804AEF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AEF70  4E 80 00 20 */	blr 
