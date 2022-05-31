lbl_8058FF08:
/* 8058FF08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058FF0C  7C 08 02 A6 */	mflr r0
/* 8058FF10  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058FF14  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FF18  4B B0 AF BD */	bl func_8009AED4
/* 8058FF1C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058FF20  7C 7D 1B 78 */	mr r29, r3
/* 8058FF24  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058FF28  7C 9E 23 78 */	mr r30, r4
/* 8058FF2C  3F E5 00 02 */	addis r31, r5, 2
/* 8058FF30  38 A0 FF FF */	li r5, -1
/* 8058FF34  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 8058FF38  38 C0 00 01 */	li r6, 1
/* 8058FF3C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058FF40  7D 89 03 A6 */	mtctr r12
/* 8058FF44  4E 80 04 21 */	bctrl 
/* 8058FF48  2C 03 00 00 */	cmpwi r3, 0
/* 8058FF4C  40 82 00 24 */	bne lbl_8058FF70
/* 8058FF50  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 8058FF54  7F A3 EB 78 */	mr r3, r29
/* 8058FF58  7F C4 F3 78 */	mr r4, r30
/* 8058FF5C  38 A0 FF FF */	li r5, -1
/* 8058FF60  81 86 01 20 */	lwz r12, 0x120(r6)
/* 8058FF64  38 C0 00 02 */	li r6, 2
/* 8058FF68  7D 89 03 A6 */	mtctr r12
/* 8058FF6C  4E 80 04 21 */	bctrl 
lbl_8058FF70:
/* 8058FF70  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FF74  4B B0 AF AD */	bl func_8009AF20
/* 8058FF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058FF7C  7C 08 03 A6 */	mtlr r0
/* 8058FF80  38 21 00 20 */	addi r1, r1, 0x20
/* 8058FF84  4E 80 00 20 */	blr 
