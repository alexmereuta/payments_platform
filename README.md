Considerations
================

- Bounded context by using two rails engines
- Direct communication through ruby between the engines, not relying on http. Using facades/repository patterns
- Interactor/service used in the payments engine to keep enriching logic separate
- Error handling and validation could be added.
- Authentication and Authorization could be added with Device/JWT/Pundit
- Security has not been taken into account
- No testing or documentation
- Use uuid instead of ids
- Using class methods would be more appropriate but I didn't want to use the limited time to change it
