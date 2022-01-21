.include "macros.inc"

.section .text

.org 0x8009AAF4

.global __copy
__copy:
/* 8009AAF4 00097A54  28 03 00 00 */	cmplwi r3, 0
/* 8009AAF8 00097A58  4D 82 00 20 */	beqlr 
/* 8009AAFC 00097A5C  28 05 00 00 */	cmplwi r5, 0
/* 8009AB00 00097A60  4D 82 00 20 */	beqlr 
/* 8009AB04 00097A64  7C 66 1B 78 */	mr r6, r3
lbl_8009AB08:
/* 8009AB08 00097A68  88 04 00 00 */	lbz r0, 0(r4)
/* 8009AB0C 00097A6C  34 A5 FF FF */	addic. r5, r5, -1
/* 8009AB10 00097A70  38 84 00 01 */	addi r4, r4, 1
/* 8009AB14 00097A74  98 06 00 00 */	stb r0, 0(r6)
/* 8009AB18 00097A78  38 C6 00 01 */	addi r6, r6, 1
/* 8009AB1C 00097A7C  40 82 FF EC */	bne lbl_8009AB08
/* 8009AB20 00097A80  4E 80 00 20 */	blr 
