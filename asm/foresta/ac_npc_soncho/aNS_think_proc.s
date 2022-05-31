lbl_8057EEF8:
/* 8057EEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057EEFC  7C 08 02 A6 */	mflr r0
/* 8057EF00  2C 05 00 01 */	cmpwi r5, 1
/* 8057EF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057EF08  41 82 00 1C */	beq lbl_8057EF24
/* 8057EF0C  40 80 00 1C */	bge lbl_8057EF28
/* 8057EF10  2C 05 00 00 */	cmpwi r5, 0
/* 8057EF14  40 80 00 08 */	bge lbl_8057EF1C
/* 8057EF18  48 00 00 10 */	b lbl_8057EF28
lbl_8057EF1C:
/* 8057EF1C  4B FF FE 85 */	bl aNS_think_init_proc
/* 8057EF20  48 00 00 08 */	b lbl_8057EF28
lbl_8057EF24:
/* 8057EF24  4B FF FE 55 */	bl func_8057ED78
lbl_8057EF28:
/* 8057EF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057EF2C  7C 08 03 A6 */	mtlr r0
/* 8057EF30  38 21 00 10 */	addi r1, r1, 0x10
/* 8057EF34  4E 80 00 20 */	blr 
