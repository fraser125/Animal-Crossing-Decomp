lbl_8058FF88:
/* 8058FF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058FF8C  7C 08 02 A6 */	mflr r0
/* 8058FF90  2C 05 00 01 */	cmpwi r5, 1
/* 8058FF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058FF98  41 82 00 1C */	beq lbl_8058FFB4
/* 8058FF9C  40 80 00 1C */	bge lbl_8058FFB8
/* 8058FFA0  2C 05 00 00 */	cmpwi r5, 0
/* 8058FFA4  40 80 00 08 */	bge lbl_8058FFAC
/* 8058FFA8  48 00 00 10 */	b lbl_8058FFB8
lbl_8058FFAC:
/* 8058FFAC  4B FF FF 11 */	bl aTNN1_schedule_init_proc
/* 8058FFB0  48 00 00 08 */	b lbl_8058FFB8
lbl_8058FFB4:
/* 8058FFB4  4B FF FF 55 */	bl aTNN1_schedule_main_proc
lbl_8058FFB8:
/* 8058FFB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058FFBC  7C 08 03 A6 */	mtlr r0
/* 8058FFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058FFC4  4E 80 00 20 */	blr 
