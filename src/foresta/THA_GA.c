#define __THA_GA_C_

#include "THA_GA.h"

extern void THA_GA_ct(THA_GA* this, Gfx* p, size_t n) {
	THA_ct(&this->tha, (char*)p, n);
}

extern void THA_GA_dt(THA_GA* this) {
	THA_dt(&this->tha);
}

extern int THA_GA_isCrash(THA_GA* this) {
	return THA_isCrash(&this->tha);
}

extern void THA_GA_init(THA_GA* this) {
	THA_init(&this->tha);
}

extern int THA_GA_getFreeBytes(THA_GA* this) {
	return THA_getFreeBytes(&this->tha);
}

extern void* THA_GA_getHeadPtr(THA_GA* this) {
	return THA_getHeadPtr(&this->tha);
}

extern void THA_GA_setHeadPtr(THA_GA* this, void* p) {
	THA_setHeadPtr(&this->tha, p);
}

extern void* THA_GA_getTailPtr(THA_GA* this) {
	return THA_getTailPtr(&this->tha);
}

extern void* THA_GA_nextPtrN(THA_GA* this, size_t n) {
	return THA_nextPtrN(&this->tha, (int)sizeof(Gfx) * n);
}

extern void* THA_GA_nextPtr1(THA_GA* this) {
	return THA_GA_nextPtrN(this, 1);
}

extern Gfx* THA_GA_NEXT_DISP(THA_GA* this) {
	return (Gfx*)THA_GA_nextPtr1(this);
}

extern Mtx* THA_GA_alloc(THA_GA* this, size_t n) {
	return (Mtx*)THA_alloc(&this->tha, n);
}

extern Mtx* THA_GA_allocMtxN(THA_GA* this, size_t n) {
	return THA_GA_alloc(this, sizeof(Mtx) * n);
}

extern Mtx* THA_GA_allocMtx1(THA_GA* this) {
	return THA_GA_alloc(this, sizeof(Mtx));
}

extern Vtx* THA_GA_allocVtxN(THA_GA* this, size_t n) {
	return (Vtx*)THA_GA_alloc(this, sizeof(Vtx) * n);
}

extern Vtx* THA_GA_allocVtx1(THA_GA* this) {
	return (Vtx*)THA_GA_alloc(this, sizeof(Vtx));
}
